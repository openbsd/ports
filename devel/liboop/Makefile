# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:10 espie Exp $

COMMENT=		low-level event loop management library

DISTNAME=		liboop-1.0
REVISION =		1
SHARED_LIBS=		oop		4.1
CATEGORIES=		devel

HOMEPAGE=		http://liboop.ofb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--without-adns \
			--without-glib \
			--without-libwww \
			--without-readline \
			--without-tcl

.include <bsd.port.mk>
