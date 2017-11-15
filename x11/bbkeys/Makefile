# $OpenBSD: Makefile,v 1.33 2017/11/15 21:28:05 sthen Exp $

COMMENT=	X keygrabber for blackbox

DISTNAME=	bbkeys-0.9.0
REVISION=	8
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbkeys/}

HOMEPAGE=	http://bbkeys.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c freetype expat fontconfig ICE iconv m SM ${COMPILER_LIBCXX}
WANTLIB += X11 Xau Xdmcp Xext Xft Xrender z xcb

LIB_DEPENDS=	converters/libiconv

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
