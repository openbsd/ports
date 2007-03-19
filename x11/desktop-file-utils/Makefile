# $OpenBSD: Makefile,v 1.1.1.1 2007/03/19 20:08:41 jasper Exp $

COMMENT=		"utilities for working with desktop entries"

DISTNAME=		desktop-file-utils-0.12
CATEGORIES=		x11 sysutils

HOMEPAGE=		http://freedesktop.org/wiki/Software_2fdesktop_2dfile_2dutils

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=		http://freedesktop.org/software/desktop-file-utils/releases/

MODULES=		devel/gettext
LIB_DEPENDS=            glib-2.0.>=1000.0::devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
