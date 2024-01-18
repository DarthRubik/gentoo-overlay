EAPI=7

PYTHON_COMPAT=( python3_{6..11} )

inherit distutils-r1

DESCRIPTION="Convert KiCad netlist into a PCBNEW .kicad_pcb file."
HOMEPAGE="https://devbisme.github.io/kinet2pcb"
SRC_URI="https://files.pythonhosted.org/packages/84/d7/9d2bccfec08b96ef5a07e12b8cfc4964a2fca324ddec1909b8d07a6ab964/kinet2pcb-1.1.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

# NOTE that the graphviz dependancy is not documented
RDEPEND="${PYTHON_DEPS}
    $(python_gen_cond_dep '
        >=dev-python/kinparse-0.1.2[${PYTHON_USEDEP}]
    ')
    $(python_gen_cond_dep '
        >=dev-python/hierplace-1.0.0[${PYTHON_USEDEP}]
    ')
"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest
