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
	Hosted servers include: a monitoring service, a learning management service,
	a CI runner, source forge, email relay, and more.

	Automated TLS certificate rollout using DNS-01 ACME challenges, with azure DNS
	and letsencrypt. No certificate expiration since rollout.
]

= Projects
#let project(name, url, body) = {
	link(url)[#text(size: 12pt)[** #name **]]
	body
}

#cvcol[
	- #project("Code Forge", "https://github.com/awsomearvinder/code-forge")[
		- A work in progress source code forge.
		- Svelte frontend and Rust backend.
		- Can view and read commit metadata, commit log.
		- Can browse source of repos.
	]

	- #project("doas", "https://github.com/awsomearvinder/doas/")[
		- Project to learn about how `sudo` worked.
		- Clone of the popular doas project which originated in OpenBSD.
		- Can parse entirety of official `doas` configuration syntax.
		- Working CI with parser unit tests.
	]

	- #project("ffmpeg-idler", "https://github.com/awsomearvinder/idle-ffmpeg-runner")[
		- Runs ffmpeg encodes when user is idle
		- Pauses ffmpeg process using win32's `debugapi` on user activity.
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
		- Continuous use since 2018
		- Strong understanding of the ecosystem.
		- Can write networking code on top of i.e. HTTPS.
		- Use low level (potentially unsafe) libraries such as `libgit2`, `windows-rs`.
		- CLI apps, backend code.
	]

	- #skill("Python")[
		- Primary scripting language of choice.
		- Web services
		- Automating linux tasks, manipulating processes and data.
	]
	
	- #skill("Linux")[
		- Can use, and manage docker containers through e.g. Dockerfile
		- Bash scripting.
		- Networking (static routes, NAT, firewall rule management)
		- Nix package management
	]

	- #skill("CI/CD")[
		- Can automatically deploy code, manage secrets, and test code.
		- Use CI/CD to automate building releases, run test builds on
		  all currently developed repos.
	]
]
