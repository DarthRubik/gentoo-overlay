EAPI=7

PYTHON_COMPAT=( python3_{6..11} )

inherit distutils-r1

DESCRIPTION="This PCBNEW plugin arranges the parts into groups that reflect the hierarchy in the design."
HOMEPAGE="https://github.com/devbisme/HierPlace"
SRC_URI="https://files.pythonhosted.org/packages/19/01/1d98cd0e18ab5485850f1b30c28ad4e8a768dfe43a2852c2efaf6c369775/hierplace-1.1.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}"
BDEPEND="${RDEPEND}"

distutils_enable_tests pytest
