COMMENT =		programmable completion functions for bash

GH_PROJECT =		bash-completion
GH_ACCOUNT =		scop
GH_TAGNAME =		2.17.0

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

post-install:
	# this is from patchutils, which now provides its own completion cripts
	rm ${PREFIX}/share/bash-completion/completions/interdiff

.include <bsd.port.mk>
