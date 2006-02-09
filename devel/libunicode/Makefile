# $OpenBSD: Makefile,v 1.5 2006/02/09 07:32:45 steven Exp $

COMMENT=	"library for manipulating Unicode characters and strings"

DISTNAME=	libunicode-0.4
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	unicode 0.0

CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libunicode/0.4/}

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
