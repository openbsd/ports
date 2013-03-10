# $OpenBSD: Makefile,v 1.18 2013/03/10 22:55:06 espie Exp $

COMMENT=	console napster client

VERSION=	1.3g
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}
REVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://bwap.clawz.com/downloads/

HOMEPAGE=	http://www.TekNap.com/

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c m ncurses panel pthread

CONFIGURE_STYLE=	gnu dest

NO_TEST=		Yes

WRKDIST=	${WRKDIR}/TekNap

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}"
post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/TekNap/help

.include <bsd.port.mk>
