# $OpenBSD: Makefile,v 1.1.1.1 2003/12/31 17:38:25 sturm Exp $

VERSION=		2.3
PATCHLEVEL=		.3
PKG_PATCHLEVEL=

COMMENT-bsddb=		"Berkeley db module for Python"

FULLPKGNAME-bsddb=	python-bsddb-${VERSION}${PATCHLEVEL}${PKG_PATCHLEVEL}

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-ipv6

AUTOCONF_VERSION=	2.57

LIB_DEPENDS=		bz2::archivers/bzip2

FLAVORS=		no_bsddb

.include <bsd.port.mk>
