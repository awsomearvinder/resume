#import "moderncv.typ": *

#show: project.with(
	author: "Arvinder Dhanoa",
	github: "awsomearvinder",
	phone: "+01 651 367 9347",
	email: "ArvinderDhan@gmail.com",
	website: "www.arvinderd.com"
)

#show link: underline
#show link: set text(blue)

= Description
#cvcol[
	A Software Developer with a passion for Systems tooling,
	operating systems, compilers, and security. Adept at diving
	into how things work, and solving technical problems.
]

= Work Experience

#cventry(
	start: (month: "October", year: 2021),
	end: (month: "", year: "Present"),
	role: [Student System Administrator],
	place: "Winona State University",
)[
	Managed Debian Linux servers using Ansible. Created an automated deployment 	
	pipeline with proper secret handling for servers, using a self-hosted CI runner.
	Created a REST API web service to create snapshots for servers prior to upgrades.
	Managed ~10 servers, hosting a monitoring service, a learning management service
	for 100+ students per semester, a CI runner, source forge, email
	relay, and more.
]

= Projects
#let project(name, url, body) = {
	link(url)[#text(size: 12pt)[** #name **]]
	body
}

#cvcol[
	- #project("Code Forge", "https://github.com/awsomearvinder/code-forge")[
		- A work in progress git code forge, eventually planning on implementing
		  `forge fed`.
	]

	- #project("Doas", "https://github.com/awsomearvinder/doas/")[
		- Project to learn about how `sudo` worked.
		- Clone of the popular doas project which originated in OpenBSD,
		  and has a Linux variant as well.
	]
]

= Education

#cventry(
	start: (month: "August", year: 2021),
	end: (month: "", year: "Present"),
	role: "Student",
	place: "Winona State University",
)[
	Pursuing a B.S. degree for Computer Science in WSU.
]

#pagebreak()

= Technical Skills

#cvcol[
	#let skill(name, body) = {
		heading(level: 4)[#text(size: 12pt)[#name]]
		body
	}
	- #skill("Rust")[
		- My Goto programming language.
		- Continuous use since 2018
		- Strong understanding of the ecosystem.
	]

	- #skill("Python")[
		- Primary scripting language of choice.
		- Can work with `poetry`, `pip`, etc.
	]
	
	- #skill("Linux")[
		- Operating System of choice, both on desktop and on servers.
		- Strong understanding of `bash`, and linux tooling.
	]

	
	- #skill("CI/CD")[
		- Have used GitHub actions, and woodpecker to validate and deploy
		  code.
		- Strong believer in automating as many tasks as humanly possible,
		  and keeping git as the source of truth.
	]
]
