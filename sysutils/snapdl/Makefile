#$OpenBSD: Makefile,v 1.5 2011/06/21 20:17:54 naddy Exp $

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

NO_BUILD =		Yes
NO_REGRESS =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/snapdl.pl ${PREFIX}/bin/snapdl
	${INSTALL_MAN} ${WRKSRC}/snapdl.1 ${PREFIX}/man/man1/snapdl.1

.include <bsd.port.mk>
