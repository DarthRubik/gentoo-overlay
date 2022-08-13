EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit distutils-r1

DESCRIPTION="Python library for creating digital ciruits exportable to kicad"
HOMEPAGE="https://github.com/devbisme/skidl"
SRC_URI="https://files.pythonhosted.org/packages/f8/6b/5f364e71d8237548ef8bc1e886cebcd7b398299d7af984d07e4f7c644a3d/skidl-1.1.0.tar.gz"

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
        >=dev-python/graphviz-0.20[${PYTHON_USEDEP}]
    ')
"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest
