# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserImage.destroy_all
User.destroy_all
Image.destroy_all

require ‘rest-client’
    image_response = RestClient.get(“https://api.nasa.gov/planetary/apod?api_key=Y8DYngjtyF9bVRPqWpmyjYihBeFnVYvdOLyWcE0v&count=20”)
    image_result = JSON.parse(image_response)
    image_result.map do |photo_of_day|
        Image.create(
            date: photo_of_day[“date”],
            title: photo_of_day[“title”],
            url: photo_of_day[“url”],
            explanation: photo_of_day[“explanation”]
        )
    end

# peter = User.create(name: "peter", date_logged: "2020-02-04")
# josh = User.create(name: "josh", date_logged: "2020-02-04")
# evan = User.create(name: "evan", date_logged: "2020-02-04")

# i1 = Image.create(date: "2012-01-03", explanation: "Higher than the highest building, higher than the highest mountain, higher than the highest airplane, lies the realm of the aurora.  Auroras rarely reach below 60 kilometers, and can range up to 1000 kilometers.  Aurora light results from energetic electrons and protons striking molecules in the Earth's atmosphere.  Frequently, when viewed from space, a complete aurora will appear as a circle around one of the Earth's magnetic poles.  The above wide angle image, horizontally compressed, captured an unexpected auroral display that stretched across the sky one month ago over eastern Norway.   Best Short Astronomy Videos: APOD editor to speak in New York City on Friday, January 6", title: "A Full Sky Aurora Over Norway", url: "https://apod.nasa.gov/apod/image/1201/aurora_voltmer_900.jpg")
# i2 = Image.create(date: "1995-08-11", explanation: "August 11, 1995    The Compton Gamma Ray Observatory  Credit: NASA,  Compton Gamma Ray Observatory Science Support Center Explanation:  The  Compton Gamma Ray Observatory (CGRO) was the most massive instrument ever  launched by a NASA Space Shuttle and continues to revolutionize gamma-ray astronomy. This orbiting observatory sees the sky in gamma-ray photons - light so blue humans can't see it. These photons are blocked by the Earth's atmosphere from reaching the Earth's surface.  Results from CGRO have shown the entire universe to be a violent and rapidly changing place - when viewed in gamma-rays. Astronomers using CGRO data continue to make monumental discoveries, including  showing that mysterious flashes of gamma-rays are much more powerful than previously imagined,  discovery of a whole new class of QSO, and  discovery of objects so strange that astronomers can't yet figure out what they are.", title: "The Compton Gamma Ray Observatory", url: "https://apod.nasa.gov/apod/image/gro.gif")
# i3 = Image.create(date: "2013-09-14", explanation: "With parachute deployed and retro-rockets blazing, this spacecraft landed on planet Earth on September 11 (UT) in a remote area near the town of Zhezkazgan, Kazakhstan. Seen in silhouette against the rockets' glare, the spacecraft is a Soyuz TMA-08M. Its crew, Expedition 36 Commander Pavel Vinogradov and Flight Engineer Alexander Misurkin of the Russian Federal Space Agency (Roscosmos), and Flight Engineer Chris Cassidy of NASA were returning after five and half months aboard the International Space Station. The Soyuz retro-rockets fire very quickly and for an extremely short duration near touchdown. Capturing the moment, the well-timed photograph was taken from a helicopter flying over the landing site.", title: "A Landing on Planet Earth", url: "https://apod.nasa.gov/apod/image/1309/900px_201309110001HQ.jpg")

# ui1 = UserImage.create(user: peter, image: i1)
# ui2 = UserImage.create(user: evan, image: i1)
# ui3 = UserImage.create(user: josh, image: i1)
# ui4 = UserImage.create(user: peter, image: i2)
# ui5 = UserImage.create(user: evan, image: i2)
# ui6 = UserImage.create(user: josh, image: i2)
# ui7 = UserImage.create(user: peter, image: i3)

