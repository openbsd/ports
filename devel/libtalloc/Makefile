# $OpenBSD: Makefile,v 1.1.1.1 2010/04/26 17:23:25 sthen Exp $

SHARED_LIBS=	talloc 0.0	# .2.0

COMMENT=	hierarchical memory pool system with destructors
DISTNAME=	talloc-2.0.1
PKGNAME=	lib${DISTNAME}

CATEGORIES=	devel
HOMEPAGE=	http://talloc.samba.org/

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://samba.org/ftp/talloc/

CONFIGURE_STYLE=gnu
MAKE_FLAGS+=	TALLOC_SOLIB=libtalloc.so.${LIBtalloc_VERSION} \
		TALLOC_SONAME=libtalloc.so.${LIBtalloc_VERSION}

.include <bsd.port.mk>
