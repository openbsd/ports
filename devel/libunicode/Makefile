# $OpenBSD: Makefile,v 1.10 2015/03/16 18:07:43 naddy Exp $

COMMENT=	library for manipulating Unicode characters and strings

DISTNAME=	libunicode-0.4
REVISION =	2
SHARED_LIBS=	unicode 0.0

CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libunicode/0.4/}

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
