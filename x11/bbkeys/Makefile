# $OpenBSD: Makefile,v 1.32 2017/10/23 17:11:03 sthen Exp $

COMMENT=	X keygrabber for blackbox

DISTNAME=	bbkeys-0.9.0
REVISION =	7
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbkeys/}

HOMEPAGE=	http://bbkeys.sourceforge.net/

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c freetype expat fontconfig ICE iconv m SM ${COMPILER_LIBCXX} X11 Xau \
		Xdmcp Xext Xft Xrender z xcb

LIB_DEPENDS=	converters/libiconv

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
