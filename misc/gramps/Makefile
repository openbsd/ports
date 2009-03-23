# $OpenBSD: Makefile,v 1.9 2009/03/23 09:57:54 sthen Exp $

COMMENT=	genealogical research and analysis management program system

DISTNAME=	gramps-3.0.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc x11

HOMEPAGE=	http://www.gramps-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gramps/}

MODULES=	lang/python \
		textproc/intltool

BUILD_DEPENDS=	:py-gnome-*:x11/gnome/py-gnome \
		:gnome-doc-utils-*:x11/gnome/doc-utils
RUN_DEPENDS=	:py-gnome-*:x11/gnome/py-gnome \
		${MODPY_RUN_DEPENDS:S/python/python-bsddb/},-bsddb \
		:graphviz-*:math/graphviz \
		:shared-mime-info-*:misc/shared-mime-info \
		:desktop-file-utils-*:devel/desktop-file-utils \
		::x11/gnome/py-gnome-extras \
		::x11/gnome/py-gnome-desktop \
		::x11/gnome/librsvg \
		::devel/xdg-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--localedir=${LOCALBASE}/share/locale \
		--disable-scrollkeeper \
		--enable-packager-mode

.include <bsd.port.mk>
