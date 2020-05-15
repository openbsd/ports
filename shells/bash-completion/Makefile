# $OpenBSD: Makefile,v 1.2 2020/05/15 09:14:41 ajacoutot Exp $

COMMENT =		programmable completion functions for bash

GH_PROJECT =		bash-completion
GH_ACCOUNT =		scop
GH_TAGNAME =		2.10
REVISION =		0

CATEGORIES =		shells sysutils

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

BUILD_DEPENDS =		shells/bash
TEST_DEPENDS =		devel/dejagnu \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-test,${MODPY_FLAVOR}
RUN_DEPENDS =		shells/bash

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		PYTEST=py.test${MODPY_BIN_SUFFIX}

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/bash-completion/

.include <bsd.port.mk>
