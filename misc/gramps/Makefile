# $OpenBSD: Makefile,v 1.10 2009/09/16 18:29:13 jasper Exp $

COMMENT=	genealogical research and analysis management program system

DISTNAME=	gramps-3.1.2
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

BUILD_DEPENDS=	:gnome-doc-utils-*:x11/gnome/doc-utils \
		:py-gnome-*:x11/gnome/py-gnome
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		::devel/xdg-utils \
		${MODPY_RUN_DEPENDS:S/python/python-bsddb/},-bsddb \
		:graphviz-*:math/graphviz \
		:shared-mime-info-*:misc/shared-mime-info \
		::x11/gnome/librsvg \
		::x11/gnome/py-gnome-desktop \
		::x11/gnome/py-gnome-extras

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--localedir=${LOCALBASE}/share/locale \
		--disable-scrollkeeper \
		--enable-packager-mode

.include <bsd.port.mk>
