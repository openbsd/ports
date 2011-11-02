# $OpenBSD: Makefile,v 1.3 2011/11/02 20:18:52 ajacoutot Exp $

COMMENT-main=	color profiles from contributors for color calibration
COMMENT-extra=	less commonly used extra profiles for shared-color-profiles

NAME=		shared-color-profiles
V=		0.1.5
DISTNAME=	${NAME}-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-extra=	${NAME}-extra-${V}

REVISION-main=	0
REVISION-extra=	0

CATEGORIES=	graphics

HOMEPAGE=	https://github.com/hughsie/shared-color-profiles

# GPLv2, public domain, CC-BY-SA, CC-BY-ND
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://people.freedesktop.org/~hughsient/releases/

MULTI_PACKAGES=	-main -extra

PKG_ARCH=	*

RUN_DEPENDS-extra= ${BASE_PKGPATH},-main

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
