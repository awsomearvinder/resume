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
	Manage debian linux servers using ansible. Created automation
	for various services such as snapshots. Day to day
	work involves python, bash, powershell, and ansible.
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
		- In working order, is usable. No integration with `PAM`, only
		  worked with local accounts.
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

	- #skill("Linux")[
		- Operating System of choice, both on desktop and on servers.
		- Strong understanding of `bash`, and linux tooling like `systemd init`,
		 `docker`.
		- Very command line driven workflow.
	]

	- #skill("Python")[
		- Primary scripting language of choice.
		- Can work with `poetry`, `pip`, etc.
	]
	
	- #skill("CI/CD")[
		- Have used GitHub actions, and woodpecker to validate and deploy
		  code.
		- Strong believer in automating as many tasks as humanly possible,
		  and keeping git as the source of truth.
	]
]
