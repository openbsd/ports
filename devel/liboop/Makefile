# $OpenBSD: Makefile,v 1.13 2015/11/24 09:11:04 jasper Exp $

COMMENT=		low-level event loop management library

DISTNAME=		liboop-1.0
REVISION =		3
SHARED_LIBS=		oop		4.1
CATEGORIES=		devel

HOMEPAGE=		http://liboop.ofb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://distfiles.nl/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--without-adns \
			--without-glib \
			--without-libwww \
			--without-readline \
			--without-tcl

.include <bsd.port.mk>
