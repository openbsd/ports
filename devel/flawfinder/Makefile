COMMENT=		C/C++ source code auditing tool

GH_ACCOUNT =		david-a-wheeler
GH_PROJECT =		flawfinder
GH_TAGNAME =		2.0.19
CATEGORIES=		devel security
REVISION =		0

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	flawfinder.py

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/flawfinder.py ${PREFIX}/bin/flawfinder
	${INSTALL_MAN} ${WRKSRC}/flawfinder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
