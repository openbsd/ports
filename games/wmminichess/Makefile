# $OpenBSD: Makefile,v 1.8 2002/03/21 20:57:07 espie Exp $

COMMENT=		'wm-dockapp; chess game'

DISTNAME=		miniCHESS-0.8
PKGNAME=		wm${DISTNAME:L}
CATEGORIES=		games x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://www.electricrain.com/edavis/miniCHESS/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			ftp://ftp.funet.fi/pub/FreeBSD/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

RUN_DEPENDS=		:gnuchess-*:games/gnuchess

USE_X11=		Yes
NO_REGRESS=		Tes

ALL_TARGET=		minichess

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/minichess ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmminichess
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmminichess/

.include <bsd.port.mk>
