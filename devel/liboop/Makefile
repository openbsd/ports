COMMENT=		low-level event loop management library

DISTNAME=		liboop-1.0
REVISION =		3
SHARED_LIBS=		oop		4.1
CATEGORIES=		devel

HOMEPAGE=		http://liboop.ofb.net/

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://distfiles.sigtrap.nl/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--without-adns \
			--without-glib \
			--without-libwww \
			--without-readline \
			--without-tcl

.include <bsd.port.mk>
