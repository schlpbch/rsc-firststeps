import { Suspense } from "react";
import VideoSection from "./VideoSection";

export default async function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <h1 className="text-4xl font-bold mb-14">
        First Steps with React Server Components
      </h1>
      <Suspense fallback={<p>Loading...</p>}>
        <VideoSection />
      </Suspense>
    </main>
  );
}
