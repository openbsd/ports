# $OpenBSD: Makefile,v 1.12 2013/06/04 18:41:51 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	scim plugin for qt

DISTNAME=	scim-qtimm-0.9.4
REVISION=	4

CATEGORIES=	inputmethods

HOMEPAGE=	http://www.scim-im.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 stdc++ xcb scim-1.0 scim-x11utils-1.0 m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		x11/qt3
LIB_DEPENDS=	inputmethods/scim

SUBST_VARS=     MODQT_PLUGINS

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-skim-support \
		--with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		UIC_PATH=${MODQT_UIC} \
		QTDIR=${MODQT_QTDIR}

.include <bsd.port.mk>
