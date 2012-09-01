# $OpenBSD: Makefile,v 1.32 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT=	utilities for dot.desktop entries

DISTNAME=	desktop-file-utils-0.20
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 pthread

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
