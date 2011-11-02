# $OpenBSD: Makefile,v 1.2 2011/11/02 17:37:40 ajacoutot Exp $

COMMENT-main=	color profiles from contributors for color calibration
COMMENT-extra=	less commonly used extra profiles for shared-color-profiles

NAME=		shared-color-profiles
V=		0.1.5
DISTNAME=	${NAME}-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-extra=	${NAME}-extra-${V}

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

post-install:
	mv ${PREFIX}/share/shared-color-profiles \
		${PREFIX}/share/doc/shared-color-profiles

.include <bsd.port.mk>
