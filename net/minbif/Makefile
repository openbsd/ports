# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:32 sthen Exp $

COMMENT =	IRC-friendly instant messaging client

DISTNAME=	minbif-1.0.5
CATEGORIES=	net
REVISION=	5

HOMEPAGE =	http://minbif.im/
MASTER_SITES=	${HOMEPAGE}attachments/download/148/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	devel/cmake

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	net/pidgin,-libpurple \
		security/gnutls
WANTLIB =	purple c glib-2.0 gthread-2.0 intl m pthread \
		${COMPILER_LIBCXX} gnutls
CONFIGURE_ENV+=	CPPFLAGS+="-I${X11BASE}/include"

NO_TEST =	Yes

# commented out atm, needs testing
#FLAVORS = full
#FLAVOR ?=
#
#.if ${FLAVOR:Mfull}
#LIB_DEPENDS=	net/pidgin,-libpurple,audio \
#		multimedia/gstreamer-0.10/core \
#		net/farsight2 \
#		graphics/libcaca>=0.99.17
#
#WANTLIB +=	Imlib2 X11 Xext freetype gmodule-2.0 gobject-2.0 gstreamer-0.10
#WANTLIB +=	caca gstbase-0.10 gstfarsight-0.10 gstinterfaces-0.10 xml2 z
#
#CONFIGURE_ARGS+=	-D ENABLE_VIDEO=ON \
#			-D ENABLE_CACA=ON \
#			-D ENABLE_IMLIB=ON
#.else
CONFIGURE_ARGS+=	-D ENABLE_VIDEO=OFF \
			-D ENABLE_CACA=OFF \
			-D ENABLE_PAM=OFF \
			-D ENABLE_IMLIB=OFF
#.endif

.include <bsd.port.mk>
