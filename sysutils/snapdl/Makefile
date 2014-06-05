#$OpenBSD: Makefile,v 1.7 2014/06/05 20:22:42 giovanni Exp $

COMMENT =		download snapshots of OpenBSD-current

DISTNAME =		snapdl-1.2.2
REVISION =		0
CATEGORIES =		sysutils
PKG_ARCH =		*

MAINTAINER =		Nicolas P. M. Legrand <nlegrand@ethelred.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.ethelred.fr/stuffs/ \
			http://devio.us/~nlegrand/stuffs/

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/snapdl.pl ${PREFIX}/bin/snapdl
	${INSTALL_MAN} ${WRKSRC}/snapdl.1 ${PREFIX}/man/man1/snapdl.1

.include <bsd.port.mk>
