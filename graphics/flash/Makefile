# $OpenBSD: Makefile,v 1.4 2002/03/21 20:57:08 espie Exp $

COMMENT=	"open source standalone flash(tm) player"

DISTNAME=	flash-0.4.10
CATEGORIES=	graphics	
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.515

HOMEPAGE=	http://www.swift-tools.com/Flash/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/swfplayer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/flash
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/flash

.include <bsd.port.mk>
