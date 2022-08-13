EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit distutils-r1

DESCRIPTION="Python library for creating digital ciruits exportable to kicad"
HOMEPAGE="https://github.com/devbisme/kinparse"
SRC_URI="https://files.pythonhosted.org/packages/b9/0d/4d04e0a5df0d3b90198d997cdec0f798f808cbed4c7ad9518449ed073b2f/kinparse-1.1.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
RDEPEND="${PYTHON_DEPS}"
BDEPEND="${RDEPEND}"
distutils_enable_tests pytest

#python_install() {
# python_domodule *.py
#}

#src_install() {
# python_foreach_impl python_install
#}
