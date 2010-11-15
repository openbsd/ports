# $OpenBSD: Makefile,v 1.7 2010/11/15 19:46:00 espie Exp $

COMMENT=	library for manipulating Unicode characters and strings

DISTNAME=	libunicode-0.4
REVISION =	1
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
