import Image from 'next/image'

// localhost:3000/

export default function Home() {
  return (
    <main className="relative h-screen flex-col items-center justify-between">
      <h1 className="absolute h-24 w-full bottom-0 animate-bounce flex-row text-center text-white text-2xl">
        Please, scroll down
      </h1>
      <video autoPlay muted loop className=".video flex object-cover">
        <source src="/bg.mp4" type="video/mp4" />
      </video>
      <div className="flex h-screen flex-col">
        <h2 className="flex w-full text-white text-4xl font-bold">Home</h2>
      </div>
    </main>
  );
}
