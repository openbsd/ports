# $OpenBSD: Makefile,v 1.5 2020/06/01 16:33:05 naddy Exp $

COMMENT =		programmable completion functions for bash

GH_PROJECT =		bash-completion
GH_ACCOUNT =		scop
GH_TAGNAME =		2.10
REVISION =		2

CATEGORIES =		shells sysutils

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

BUILD_DEPENDS =		shells/bash
TEST_DEPENDS =		devel/dejagnu \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		PYTEST=py.test${MODPY_BIN_SUFFIX}

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/bash-completion/

.include <bsd.port.mk>
