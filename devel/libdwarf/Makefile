# Note that this may not build if an older libdwarf is already installed.

COMMENT=		library to access the DWARF debugging file format

V=			2.3.3
DISTNAME=		libdwarf-${V}
EPOCH=			0

SHARED_LIBS=		dwarf 2.0

CATEGORIES=		devel

HOMEPAGE=		https://www.prevanders.net/dwarf.html

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB +=		c z zstd

SITES=			https://www.prevanders.net/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson \
			lang/python

LIB_DEPENDS=		archivers/zstd

NO_TEST=		Yes

.include <bsd.port.mk>
