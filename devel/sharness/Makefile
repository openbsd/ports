COMMENT =	portable shell library supporting the test anything protocol

V =			1.1.0

GH_ACCOUNT =		chriscool
GH_PROJECT =		sharness
GH_TAGNAME =		v$V

CATEGORIES =		devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# test/Makefile uses some GNUisms.
USE_GMAKE =		Yes
NO_BUILD =		Yes

TEST_DEPENDS =		devel/p5-IO-Tty \
			shells/bash

.include <bsd.port.mk>
