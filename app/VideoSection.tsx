import { createClient } from "@supabase/supabase-js";
import { Database } from "@/types/supabase";

import VideoCard from "./VideoCard";

export interface Video {
  id: number;
  image: string;
  title: string;
  views: number;
  published?: string;
}

async function fetchVideos2(): Promise<Video[]> {
  await new Promise((resolve) => setTimeout(resolve, 1000));
  const videos = await fetch("http://localhost:4000/tutorials").then((res) =>
    res.json()
  );
  return videos;
}

async function fetchVideosREST(): Promise<Video[]> {
  await new Promise((resolve) => setTimeout(resolve, 1000));
  const videos = await fetch(
    "http://127.0.0.1:54321/rest/v1/Tutorial?select=*"
  ).then((res) => res.json());
  console.log(videos);
  return videos;
}

async function fetchVideosSupabase(): Promise<Video[]> {
  const supabase = createClient<Database>(
    process.env.NEXT_PUBLIC_SUPABASE_URL ?? "",
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ?? ""
  );

  const { data: tutorial, error } = await supabase
    .from("Tutorial")
    .select("id, image, title, views, published")
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
