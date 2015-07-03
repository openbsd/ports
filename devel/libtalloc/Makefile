# $OpenBSD: Makefile,v 1.5 2015/07/03 22:47:25 bentley Exp $

SHARED_ONLY=	Yes

SHARED_LIBS=	talloc 0.0	# .2.0

COMMENT=	hierarchical memory pool system with destructors
DISTNAME=	talloc-2.0.1
REVISION=	2
PKGNAME=	lib${DISTNAME}

CATEGORIES=	devel
HOMEPAGE=	https://talloc.samba.org/

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://samba.org/ftp/talloc/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -g"
MAKE_FLAGS+=	TALLOC_SOLIB=libtalloc.so.${LIBtalloc_VERSION} \
		SHLD_FLAGS="-g -shared" \
		SONAMEFLAG="" TALLOC_SONAME=""

.include <bsd.port.mk>
