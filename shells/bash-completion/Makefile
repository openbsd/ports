COMMENT =		programmable completion functions for bash

GH_PROJECT =		bash-completion
GH_ACCOUNT =		scop
GH_TAGNAME =		2.16.0
REVISION =		0

CATEGORIES =		shells sysutils

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		shells/bash
TEST_DEPENDS =		devel/dejagnu \
			devel/py-pexpect \
			devel/py-test

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		PYTEST=py.test

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/bash-completion/
UPDATE_PLIST_ARGS =	-i MODPY_VERSION

# see patches/
# https://github.com/scop/bash-completion/commit/af8a80d8916edd4a1c146afb2743651b6c3ca406
post-extract:
	mv ${WRKSRC}/completions/{secret-tool,_secret-tool}

.include <bsd.port.mk>
