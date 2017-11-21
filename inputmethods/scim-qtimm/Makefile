# $OpenBSD: Makefile,v 1.22 2017/11/21 00:13:01 naddy Exp $

COMMENT=	scim plugin for qt

DISTNAME=	scim-qtimm-0.9.4
REVISION=	9

CATEGORIES=	inputmethods

HOMEPAGE=	https://sourceforge.net/projects/scim/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 iconv intl m pthread scim-1.0 scim-x11utils-1.0
WANTLIB += ${COMPILER_LIBCXX} xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/qt3
BUILD_DEPENDS=	devel/gettext-tools
LIB_DEPENDS=	inputmethods/scim

SUBST_VARS=     MODQT_PLUGINS

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-skim-support \
		--with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		UIC_PATH=${MODQT_UIC} \
		QTDIR=${MODQT_QTDIR}

.include <bsd.port.mk>
