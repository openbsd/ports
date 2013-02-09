# $OpenBSD: Makefile,v 1.8 2013/02/09 14:49:52 sthen Exp $

COMMENT =	IRC-friendly instant messaging client

DISTNAME=	minbif-1.0.3
CATEGORIES=	net

REVISION=	3

HOMEPAGE =	http://minbif.im/
MASTER_SITES=	${HOMEPAGE}attachments/download/50/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	devel/gettext devel/cmake

LIB_DEPENDS =	net/pidgin,-libpurple
WANTLIB =	purple c glib-2.0 gthread-2.0 m pthread stdc++
CONFIGURE_ENV+=	CPPFLAGS+="-I${X11BASE}/include"

USE_GROFF =	Yes
NO_REGRESS =	Yes

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
			-D ENABLE_IMLIB=OFF
#.endif

.include <bsd.port.mk>
