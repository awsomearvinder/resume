#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item

#show: resume

#header(
  name: "Arvinder Dhanoa",
  phone: "651-367-9347",
  email: "ArvinderDhan@gmail.com",
  linkedin: "linkedin.com/in/arvinder-dhanoa-3bb08b223/",
  site: "arvinderd.com",
  github: "github.com/awsomearvinder"
)

#resume_heading[Education]
#edu_item(
  name: "Winona State University",
  degree: "Bachelor's of Science in Computer Science",
  location: "Winona, MN",
  date: "Aug. 2020 - May 2025"
)

#resume_heading[Experience]
#exp_item(
  role: "Student System Administrator",
  name: "Winona State University",
  location: "Winona, MN",
  date: "Oct. 2020 - May 2025",
  [Provisioned and Managed Linux servers for University services including email relay, CMS, and more.],
  [Automated updates and snappshotting on Linux servers using custom-made python REST APIs],
  [Rolled out Ansible, Gitea, and CI/CD based deployment and updates.]
)

#resume_heading("Projects")
#project_item(
  name: "Code Forge",
  skills: "Node.JS, Svelte, Git",
  date: "2023 - Present",
  [A code forge like GitHub, based on a more Gerrit/Phabricator like rebase workflow.],
  [Uses Svelte for UI, Rest API for interacting with the Git Storage Manager written in rust.],
)
#project_item(
  name: "pcparadise discord bot",
  skills: "Python, Asynchronous Programming",
  date: "2023 - 2024",
  [A discord bot made for a discord server with over 15,000 members.],
  [A collaborative effort, with multiple contributors.],
  [Implemented linting and formatting checks in Github CI.]
)
#project_item(
  name: "remarkable-zotero-sync",
  skills: "REST, Rust",
  date: "2025 - Present",
  [A WIP tool that reverse engineers remarkable's API, and syncs content from zotero to Remarkable]
)
#project_item(
  name: "ebpf-clat",
  skills: "eBPF, Rust, Networking, Linux",
  date: "2025 - Present",
  [An IPv6 transition mechanism developed using eBPF, translates IPv4 TCP/UDP packets to IPv6],
  [Allows IPv4 applications to communicate over an IPv6 network]
)
#project_item(
  name: "doas",
  skills: "Rust, Linux",
  date: "2020 - 2021",
  [A self made doas (sudo-like tool) clone from scratch, used to learn parser combinators],
  [Compliant with real doas configuration],
)

#resume_heading("Technical Skills")
#skill_item(
  category: "Languages",
  skills: "Rust, C, C++, Python, Javascript, SQL, Java"
)
#skill_item(
  category: "Frameworks",
  skills: "Node.JS, Flask, eBPF, Svelte, React"
)
#skill_item(
  category: "Developer Tools",
  skills: "Git, Github, Gitea, Github Actions, Vim, Visual Studio Code, Linux, Docker, NixOS, Ansible"
)
#skill_item(
  category: "Misc",
  skills: "Proxmox VE, Linode, Wireguard, LDAP",
)
