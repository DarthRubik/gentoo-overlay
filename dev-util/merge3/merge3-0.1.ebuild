EAPI=8

inherit cmake
DESCRIPTION="merge3 utility to help merging with patch"
HOMEPAGE=""
SRC_URI="https://192.168.42.133:3000/attachments/1ac9e27e-9131-4d9d-9aef-932421df81de -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	sys-apps/coreutils
	app-shells/bash
	sys-apps/sed
"
RDEPEND="${DEPEND}"
BDEPEND=""


src_unpack()
{
	mkdir ${P}
	cd ${P}
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
