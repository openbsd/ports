# $OpenBSD: Makefile,v 1.11 2013/11/03 07:52:01 ajacoutot Exp $

COMMENT=		low-level event loop management library

DISTNAME=		liboop-1.0
REVISION =		2
SHARED_LIBS=		oop		4.1
CATEGORIES=		devel

HOMEPAGE=		http://liboop.ofb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--without-adns \
			--without-glib \
			--without-libwww \
			--without-readline \
			--without-tcl

.include <bsd.port.mk>
