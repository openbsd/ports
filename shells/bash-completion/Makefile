# $OpenBSD: Makefile,v 1.8 2021/11/02 00:02:20 sthen Exp $

COMMENT =		programmable completion functions for bash

GH_PROJECT =		bash-completion
GH_ACCOUNT =		scop
GH_TAGNAME =		2.11
REVISION =		0

CATEGORIES =		shells sysutils

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
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
