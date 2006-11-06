# $OpenBSD: Makefile,v 1.13 2006/11/06 20:01:06 espie Exp $

COMMENT=	"console napster client"

VERSION=	1.3g
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}p0
CATEGORIES=	audio
MASTER_SITES=	http://bwap.clawz.com/downloads/

HOMEPAGE=	http://www.TekNap.com/

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m ncurses panel pthread

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=		Yes

WRKDIST=	${WRKDIR}/TekNap

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" DESTDIR=${WRKINST}
post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/TekNap/help

.include <bsd.port.mk>
