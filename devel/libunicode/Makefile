# $OpenBSD: Makefile,v 1.4 2005/12/23 17:02:46 bernd Exp $

COMMENT=	"library for manipulating Unicode characters and strings"

DISTNAME=	libunicode-0.4
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		unicode 0.0
MODGNU_SHARED_LIBS=	unicode ''

CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libunicode/0.4/}

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
