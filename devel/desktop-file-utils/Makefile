# $OpenBSD: Makefile,v 1.57 2020/06/19 15:01:10 ajacoutot Exp $

COMMENT=	utilities for dot.desktop entries

DISTNAME=	desktop-file-utils-0.26

EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c glib-2.0 intl

MASTER_SITES=	https://freedesktop.org/software/desktop-file-utils/releases/

MODULES=	devel/meson

LIB_DEPENDS=	devel/glib2

DEBUG_PACKAGES=	${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/update-desktop-database.c

.include <bsd.port.mk>
