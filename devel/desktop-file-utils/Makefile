# $OpenBSD: Makefile,v 1.49 2018/09/25 19:23:47 jasper Exp $

COMMENT=	utilities for dot.desktop entries

DISTNAME=	desktop-file-utils-0.23
REVISION =	8

EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c glib-2.0 intl

MASTER_SITES=	http://freedesktop.org/software/desktop-file-utils/releases/

LIB_DEPENDS=	devel/glib2

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_EMACS=no

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/update-desktop-database.c

.include <bsd.port.mk>
