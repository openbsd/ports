# $OpenBSD: Makefile,v 1.12 2007/07/13 08:05:18 ajacoutot Exp $

COMMENT=	utilities for 'desktop' entries

DISTNAME=	desktop-file-utils-0.12
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://freedesktop.org/software/desktop-file-utils/releases/

MODULES=	devel/gettext	

LIB_DEPENDS=	glib-2.0::devel/glib2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
