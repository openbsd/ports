# $OpenBSD: Makefile,v 1.2 2010/04/20 18:05:05 ajacoutot Exp $

COMMENT=	extra icon theme for GNOME

GNOME_PROJECT=	gnome-icon-theme-extras
GNOME_VERSION=	2.30.1
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

USE_LIBTOOL=	No

CONFIGURE_ENV=	ac_cv_path_GIT=false \
		ac_cv_path_INKSCAPE=false \
		ac_cv_path_ICONTOOL_RENDER=false

.include <bsd.port.mk>
