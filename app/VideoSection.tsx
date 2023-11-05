import VideoCard from "./VideoCard";

export interface Video {
  id: string;
  image: string;
  title: string;
  views: string;
  published: string;
}

async function fetchVideos(): Promise<Video[]> {
  await new Promise((resolve) => setTimeout(resolve, 1000));
  const videos = await fetch("http://localhost:4000/tutorials").then((res) =>
    res.json()
  );
  return videos;
}

export default async function VideoSection() {
  const videos: Video[] = await fetchVideos();
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
