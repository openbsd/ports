#$OpenBSD: Makefile,v 1.6 2013/03/11 11:41:32 espie Exp $

COMMENT =		download snapshots of OpenBSD-current

DISTNAME =		snapdl-1.2.2
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
