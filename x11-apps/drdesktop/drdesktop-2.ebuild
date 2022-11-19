EAPI=8

inherit cmake
DESCRIPTION="Dr. Desktop environment install"
HOMEPAGE=""
SRC_URI="https://drdesktop.com/releases/drdesktop-2.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	sys-apps/coreutils
	app-shells/bash
	sys-apps/sed
	x11-misc/polybar
	media-gfx/feh
	x11-wm/cwm
	x11-apps/xmodmap
	x11-terms/rxvt-unicode[24-bit-color,xft,font-styles]
	media-sound/pulseaudio-daemon[X]
	media-libs/libpulse
	x11-base/xorg-server[xorg]
"
RDEPEND="${DEPEND}"
BDEPEND=""


src_unpack()
{
	mkdir drdesktop-2
	cd drdesktop-2
	unpack ${A}
}
src_prepare() {
	cmake_src_prepare
}

src_configure() {
	cmake_src_configure
}

src_install() {
	cmake_src_install
}
