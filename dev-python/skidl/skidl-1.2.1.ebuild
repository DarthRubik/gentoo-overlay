EAPI=7

PYTHON_COMPAT=( python3_{6..11} )

inherit distutils-r1

DESCRIPTION="Python library for creating digital ciruits exportable to kicad"
HOMEPAGE="https://github.com/devbisme/skidl"
SRC_URI="https://files.pythonhosted.org/packages/49/14/59846a2634572af9a991b10f69e75cd7336b276079e610aa9ea3fdc2b895/skidl-1.2.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

# NOTE that the graphviz dependancy is not documented
RDEPEND="${PYTHON_DEPS}
    $(python_gen_cond_dep '
        >=dev-python/future-0.15.0[${PYTHON_USEDEP}]
    ')
    $(python_gen_cond_dep '
        >=dev-python/kinparse-0.1.0[${PYTHON_USEDEP}]
    ')
    $(python_gen_cond_dep '
        >=dev-python/kinet2pcb-1.1.0[${PYTHON_USEDEP}]
    ')
    $(python_gen_cond_dep '
        >=dev-python/deprecation-2.1.0[${PYTHON_USEDEP}]
    ')
    $(python_gen_cond_dep '
        >=dev-python/graphviz-0.20[${PYTHON_USEDEP}]
    ')
"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest
