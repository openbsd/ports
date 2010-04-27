# $OpenBSD: Makefile,v 1.19 2010/04/27 11:51:03 ajacoutot Exp $

COMMENT=	utilities for 'desktop' entries

DISTNAME=	desktop-file-utils-0.16
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pcre

MASTER_SITES=	http://freedesktop.org/software/desktop-file-utils/releases/

MODULES=	devel/gettext	

LIB_DEPENDS=	glib-2.0::devel/glib2

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-silent-rules

.include <bsd.port.mk>
