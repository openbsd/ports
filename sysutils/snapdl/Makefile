#$OpenBSD: Makefile,v 1.2 2010/07/15 10:32:26 giovanni Exp $

COMMENT =		download snapshots of OpenBSD-current

DISTNAME =		snapdl-1.2.2
CATEGORIES =		sysutils
PKG_ARCH =		*

MAINTAINER =		Nicolas P. M. Legrand <nlegrand@ethelred.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.ethelred.fr/stuffs/ \
			http://devio.us/~nlegrand/stuffs/

NO_REGRESS =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/snapdl.pl ${PREFIX}/bin/snapdl
	${INSTALL_MAN} ${WRKSRC}/snapdl.cat1 ${PREFIX}/man/cat1/snapdl.0

.include <bsd.port.mk>
