# $OpenBSD: Makefile,v 1.17 2012/08/27 13:53:10 sthen Exp $

COMMENT=	console napster client

VERSION=	1.3g
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}
REVISION=	1
CATEGORIES=	audio
MASTER_SITES=	http://bwap.clawz.com/downloads/

HOMEPAGE=	http://www.TekNap.com/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c m ncurses panel pthread

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

WRKDIST=	${WRKDIR}/TekNap

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}"
post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/TekNap/help

.include <bsd.port.mk>
