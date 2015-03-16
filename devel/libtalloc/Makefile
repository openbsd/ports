# $OpenBSD: Makefile,v 1.4 2015/03/16 18:07:43 naddy Exp $

SHARED_ONLY=	Yes

SHARED_LIBS=	talloc 0.0	# .2.0

COMMENT=	hierarchical memory pool system with destructors
DISTNAME=	talloc-2.0.1
REVISION=	1
PKGNAME=	lib${DISTNAME}

CATEGORIES=	devel
HOMEPAGE=	http://talloc.samba.org/

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://samba.org/ftp/talloc/ \
		ftp://ftp.samba.org/pub/talloc/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -g"
MAKE_FLAGS+=	TALLOC_SOLIB=libtalloc.so.${LIBtalloc_VERSION} \
		SHLD_FLAGS="-g -shared" \
		SONAMEFLAG="" TALLOC_SONAME=""

.include <bsd.port.mk>
