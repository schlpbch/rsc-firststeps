import { Suspense } from "react";
import VideoCard from "./VideoCard";

export interface Video {
  id: string;
  image: string;
  title: string;
  views: string;
  published: string;
}

async function fetchVideos(): Promise<Video[]> {
  await new Promise((resolve) => setTimeout(resolve, 2000));
  const videos = await fetch("http://localhost:4000/tutorials").then((res) =>
    res.json()
  );
  return videos;
}

export default async function Home() {
  const videos: Video[] = await fetchVideos();

  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <h1 className="text-4xl font-bold mb-14">
        First Steps with React Server Components
      </h1>

      {videos.map((video) => (
        <li className="mb-6 list-none" key={video.id}>
          <Suspense>
            <VideoCard {...video} />
          </Suspense>
        </li>
      ))}
    </main>
  );
}
