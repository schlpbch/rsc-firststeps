import Image from "next/image";
import { Video } from "./VideoSection";

export default async function VideoCard(video: Video) {
  return (
    <a
      href={`https://www.youtube.com/watch?v=${video.id}`}
      target="_blank"
      rel="noopener noreferrer"
      className="hover:opacity-80"
    >
      <Image
        src={video.image}
        alt={video.title}
        width={420}
        height={200}
        className="mb-4 rounded-md"
      />
      <h4 className="font-semibold">{video.title}</h4>
      <div className="font-light text-sm">
        {video.views} &bull; {video.published}
      </div>
    </a>
  );
}
