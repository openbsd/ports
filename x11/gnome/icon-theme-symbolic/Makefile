# $OpenBSD: Makefile,v 1.2 2010/05/01 22:22:00 ajacoutot Exp $

COMMENT=	base icon theme extension for special UI contexts

GNOME_PROJECT=	gnome-icon-theme-symbolic
GNOME_VERSION=	2.30.0
PKGNAME=	${DISTNAME}p0

CATEGORIES=	x11

# CC Attribution-Share Alike 3.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/gnome/icon-theme

PKG_ARCH=	*

USE_LIBTOOL=	No

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false \
		ac_cv_path_ICONTOOL_RENDER=false

.include <bsd.port.mk>
