# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 python3_4 python3_5 )

inherit distutils-r1

DESCRIPTION="Release notes manager, storing release notes in a git repo and building docs"
HOMEPAGE="https://pypi.python.org/pypi/reno"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE=""

CDEPEND="
	>=dev-python/pbr-1.4[${PYTHON_USEDEP}]
	<dev-python/pbr-2.0[${PYTHON_USEDEP}]"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	${CDEPEND}"
RDEPEND="
	${CDEPEND}
	>=dev-python/Babel-1.3[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.1.0[${PYTHON_USEDEP}]"
