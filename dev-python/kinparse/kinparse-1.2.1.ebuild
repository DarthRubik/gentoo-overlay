EAPI=7

PYTHON_COMPAT=( python3_{6..10} )

inherit distutils-r1

DESCRIPTION="Python library for creating digital ciruits exportable to kicad"
HOMEPAGE="https://github.com/devbisme/kinparse"
SRC_URI="https://files.pythonhosted.org/packages/ae/83/3e5e7814cd215aa773d04c6f1e367e2abdab40d6180c5cf093adf92cce67/kinparse-1.2.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
RDEPEND="${PYTHON_DEPS}
    $(python_gen_cond_dep '
        >=dev-python/future-0.15.0[${PYTHON_USEDEP}]
    ')
    $(python_gen_cond_dep '
        >=dev-python/pyparsing-2.1.1[${PYTHON_USEDEP}]
    ')
"
BDEPEND="${RDEPEND}"
distutils_enable_tests pytest

#python_install() {
# python_domodule *.py
#}

#src_install() {
# python_foreach_impl python_install
#}
