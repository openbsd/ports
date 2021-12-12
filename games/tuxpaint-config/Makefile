# $OpenBSD: Makefile,v 1.28 2021/12/12 10:45:45 ajacoutot Exp $

COMMENT=	graphical tool to change Tux Paint's settings
#'

DISTNAME=	tuxpaint-config-0.0.18
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama c fltk fontconfig iconv intl m paper unibreak

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	print/libpaper \
		textproc/libunibreak \
		x11/fltk

RUN_DEPENDS=	games/tuxpaint

USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} CXX=${CXX}

NO_TEST=	Yes

pre-configure:
	rm -r ${WRKSRC}/obj

.include <bsd.port.mk>
