# $OpenBSD: Makefile,v 1.25 2013/03/11 11:23:57 espie Exp $

COMMENT=	genealogical research and analysis management program system

DISTNAME=	gramps-3.2.6
REVISION=	3

CATEGORIES=	misc x11

HOMEPAGE=	http://www.gramps-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gramps/}

MODULES=	lang/python \
		textproc/intltool

BUILD_DEPENDS=	x11/py-gtk2
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		${MODPY_RUN_DEPENDS},-bsddb \
		math/graphviz \
		misc/shared-mime-info \
		x11/gnome/librsvg \
		x11/py-gtk2 \
		www/py-webkitgtk \
		x11/gtk+2,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--localedir=${LOCALBASE}/share/locale \
		--enable-packager-mode
USE_GROFF =	Yes

.include <bsd.port.mk>
