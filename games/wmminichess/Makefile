# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:48 wilfried Exp $

DISTNAME=		miniCHESS-0.8
PKGNAME=		wm${DISTNAME:L}
CATEGORIES=		games x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.electricrain.com/edavis/miniCHESS/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		gnuchessx::games/gnuchess

USE_X11=		Yes

ALL_TARGET=		minichess

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/minichess ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmminichess
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmminichess/

.include <bsd.port.mk>
