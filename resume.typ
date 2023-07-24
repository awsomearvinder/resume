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

= Education

#cventry(
	start: (month: "September", year: 2017),
	end: (month: "June", year: 2021),
	role: "Student",
	place: "White Bear Lake Highschool",
)[Graduated from White Bear Lake Highscool.]

#cventry(
	start: (month: "August", year: 2021),
	end: (month: "", year: "Present"),
	role: "Student",
	place: "Winona State University",
)[
	Pursuing a B.S. degree for Computer Science in WSU.
]

= Work Experience

#cventry(
	start: (month: "October", year: 2021),
	end: (month: "", year: "Present"),
	role: [Student System Administrator],
	place: "Winona State University",
)[
	Manage debian linux servers using ansible. Created integration for 
	automation for things such as automated snapshots. Day to day
	worked with python, bash, powershell, and ansible.
]

= Side Projects
#let project(name, url, body) = {
	link(url)[#text(size: 12pt)[** #name **]]
	body
}

#cvcol[
	- #project("Linode Lab", "https://github.com/awsomearvinder/lab")[
		- My VPS hosted on linode. Routes back a IPv6 subnet over wireguard
		- Hosts headscale, a selfhosted tailscale control plane for remote
		  access.
		- Previously deployed through CI/CD, currently migrating CI/CD server.
	]

	- #project("Doas", "https://github.com/awsomearvinder/doas/")[
		- Project to learn about how `sudo` worked.
		- Clone of the popular doas project which originated in OpenBSD,
		  and has a Linux variant as well.
		- In working order, is usable. No integration with `PAM`, only
		  worked with local accounts.
	]

	- #project("Bad Samba", "https://github.com/awsomearvinder/bad-samba")[
		- My current project to implement the `SMB` protocol.
		- Goal of file share with LDAP integration.
		- Samba, with less features and simpler configuration. Focused on file 
		  share portion of the `SMB` protocol.
	]

	- #project("CNL","https://github.com/awsomearvinder/CNL-creatively-named-launcher")[
		- One of my first ever rust projects.
		- Launcher to open apps on my system, follows the 
		  #link("https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html")[XDG Desktop Entry Spec]
	]
]

#pagebreak()

= Technical Skills

#cvcol[
	#let skill(name, body) = {
		heading(level: 4)[#text(size: 12pt)[#name]]
		body
	}
	- #skill("Git")[
		- Strong understanding of the git data model 
		  (`rebase`, `merge`, what commits / commit-revs really are).
		- Understand the pros and cons of different git workflows,
		  and the differences between them.
	]

	- #skill("Rust")[
		- My Goto programming language at home.
		- 5 years of regular use.
		- Strong understanding of the ecosystem.
	]

	- #skill("Linux")[
		- Operating System of choice, both on desktop and on servers.
		- Strong understanding of `bash`, and linux tooling like `systemd init`,
		 `docker`.
		- Very command line driven workflow.
	]

	- #skill("Python")[
		- Primary scripting tool of choice working as a system admin
		  at my university.
		- Can work with `poetry`, `pip`, etc.
	]

	- #skill("Nix")[
		- Use it to manage my servers at home (rather then ansible like I do at work).
	]

	- #skill("Ansible")[
		- I use it at my job, and can understand it fairly well.
	]

	- #skill("Networking")[
		- Understand NAT, Firewall rules, Subnetting, VLANs, etc.
		- Currently have my routes done in my lab with wireguard &
		  static routing, want to move to BGP.
	]

	- #skill("Terraform")[
		- Sadly, can't use on my own infrastructure due to lack of
		  good providers.
		- Have used a little bit, provisioned a few VPS's with it.
	]

	- #skill("CI/CD")[
		- Have used GitHub actions, and woodpecker to validate and deploy
		  code.
		- Strong believer in automating as many tasks as humanly possible,
		  and keeping git as the source of truth.
	]
]
