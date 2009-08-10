# $OpenBSD: Makefile,v 1.2 2009/08/10 06:32:05 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	scim plugin for qt

DISTNAME=	scim-qtimm-0.9.4
PKGNAME=	${DISTNAME}p0

CATEGORIES=	inputmethods

HOMEPAGE=	http://www.scim-im.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp pthread-stubs stdc++ xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		x11/qt3
LIB_DEPENDS=	scim-1.0,scim-x11utils-1.0::inputmethods/scim

MODQT_MT=	Yes

SUBST_VARS=     MODQT_PLUGINS

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-skim-support \
		--with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		UIC_PATH=${MODQT_UIC} \
		QTDIR=${MODQT_QTDIR}

.include <bsd.port.mk>
