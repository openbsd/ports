# $OpenBSD: Makefile,v 1.7 2010/09/12 16:49:09 jasper Exp $

COMMENT=		low-level event loop management library

DISTNAME=		liboop-1.0
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		oop		4.1
CATEGORIES=		devel

HOMEPAGE=		http://liboop.ofb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
