# $OpenBSD: Makefile,v 1.11 2007/04/01 21:13:53 steven Exp $

COMMENT=	"utilities for 'desktop' entries"

DISTNAME=	desktop-file-utils-0.12
CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software_2fdesktop_2dfile_2dutils

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
