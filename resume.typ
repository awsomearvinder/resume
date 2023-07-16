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
	- #project("Linode Lab", "https://git.public.arvinderd.com/bender/lab")[
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

	- #project("Bad Samba", "https://git.public.arvinderd.com/bender/bad-samba")[
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
	== Strong

	=== Git
	I understand Git extremely well. I understand `rebase`, `merge`, how
	to manipulate the Git commit graph, and the effects of doing so.
	I have a strong mental model for how Git's data model works.

	=== Rust
	My preferred goto programming language. I try to stay away from
	using at my current job at WSU due to both the school teaching
	python, and because the benefits of rust (safety and speed), don't
	apply to my day to day work. I've been using rust for a long time
	though, and use it for my personal tools and code.

	=== Linux
	It's my goto operating system of choice. I run it both on my desktop
	as well as on my servers. I know `bash`, `systemd`'s init, `docker`,
	and can use them to a decent degree. My workflow is very command
	line driven.

	=== Python
	Unlike `Rust` I dont know the `Python` ecosystem inside and out. I
	use it a fair bit for scripting at work though, and have used it
	outside of work as well.

	=== Nix
	I use Nix to manage my home servers (with `NixOS`), rather then
	using `ansible` as I do at work. Not much to say here other
	then I like it.
]


#cvcol[
	== Working knowledge

	=== Ansible
	I use it at my job, and can use it fairly well. At work we
	use a monorepo rather then `ansible-galaxy`, and just check
	repos in.

	=== Networking
	I know enough to be dangerous. I know about NAT, Firwall rules,
	IPv4, IPv6, subnetting, VLANs, etc. I haven't set much up on my
	own aside from ip forwarding and a LAN with DHCP and PXE for my
	servers. I'd like to know more on this topic though, and have 
	wanted to set up a BGP multi-site network for my homelab over
	 wireguard & IPv6.

	=== Terraform
	Sadly, I don't use this on my own infrastructure due to the
	lack of support for a (good) proxmox provider. I've used
	it before to configure VPS's on digital ocean, and I've looked
	into it a fair bit due to my desire to eventually switch
	over as much as possible.

	=== Github Actions
	I use actions extensively to validate and deploy code,
	and my home server is also deployed through CI/CD by
	my woodpecker instance.
]
