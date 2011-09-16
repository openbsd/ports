# $OpenBSD: Makefile,v 1.21 2011/09/16 10:31:23 espie Exp $

COMMENT=	genealogical research and analysis management program system

DISTNAME=	gramps-3.2.6
REVISION=		0

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

BUILD_DEPENDS=	x11/py-gtk2
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		${MODPY_RUN_DEPENDS:S/python/python-bsddb/},-bsddb \
		math/graphviz \
		misc/shared-mime-info \
		x11/gnome/librsvg \
		x11/py-gtk2 \
		www/py-webkitgtk

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--localedir=${LOCALBASE}/share/locale \
		--enable-packager-mode
USE_GROFF =	Yes

.include <bsd.port.mk>
