# $OpenBSD: Makefile,v 1.25 2020/06/06 10:21:20 ajacoutot Exp $

COMMENT=	graphical tool to change Tux Paint's settings
#'

DISTNAME=	tuxpaint-config-0.0.15
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB += X11 Xau Xdmcp Xext c m ${COMPILER_LIBCXX} pthread fltk paper
WANTLIB += Xft Xinerama fontconfig Xcursor Xfixes iconv intl

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	x11/fltk \
		print/libpaper
RUN_DEPENDS=	games/tuxpaint

USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} CXX=${CXX}

NO_TEST=	Yes

pre-configure:
	rm -r ${WRKSRC}/obj
	${SUBST_CMD} ${WRKSRC}/src/tuxpaint-config.1

.include <bsd.port.mk>
