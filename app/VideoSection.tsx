import VideoCard from "./VideoCard";
import { supabase } from '@/lib/initSupabase'

export interface Video {
  id: number;
  image: string;
  title: string;
  views: number;
  published?: string;
}

async function fetchVideosJsonServer(): Promise<Video[]> {
  await new Promise((resolve) => setTimeout(resolve, 1000));
  const videos = await fetch("http://localhost:4000/tutorials").then((res) =>
    res.json()
  );
  return videos;
}

async function fetchVideosREST(): Promise<Video[]> {
   const videos = await fetch(
    "http://127.0.0.1:54321/rest/v1/Tutorial?select=id,image,title,views,published&order=views.desc"
  ).then((res) => res.json());
  console.log(videos);
  return videos;
}

async function fetchVideosSupabase(): Promise<Video[]> {

  const { data: tutorial, error } = await supabase
    .from("Tutorial")
    .select("id, image, title, views, published")
    .filter("id", "gt", 1) // strange
    .order("views", { ascending: false });
  if (error) {
    console.log("error", error);
  } else {
    console.log("data", tutorial);
  }
  return tutorial ?? [];
}

export default async function VideoSection() {
  const videos = await fetchVideosSupabase();
  return (
    <section>
      {videos.map((video) => (
        <li className="mb-6 list-none" key={video.id}>
          <VideoCard {...video} />
        </li>
      ))}
    </section>
  );
}
