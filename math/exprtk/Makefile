COMMENT =		c++ mathematical expression parsing and evaluation library

GH_ACCOUNT =		ArashPartow
GH_PROJECT =		exprtk
GH_TAGNAME =		0.0.3

REVISION =		0

CATEGORIES =		math
HOMEPAGE =		https://www.partow.net/programming/exprtk/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/exprtk.hpp ${PREFIX}/include

.include <bsd.port.mk>
