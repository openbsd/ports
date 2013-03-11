# $OpenBSD: Makefile,v 1.35 2013/03/11 10:50:03 espie Exp $

COMMENT=	utilities for dot.desktop entries

DISTNAME=	desktop-file-utils-0.21
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0

MASTER_SITES=	http://freedesktop.org/software/desktop-file-utils/releases/

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_EMACS=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
