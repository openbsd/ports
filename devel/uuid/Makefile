# $OpenBSD: Makefile,v 1.48 2014/06/14 10:34:44 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	ISO-C API and CLI for generating UUIDs
COMMENT-perl=	UUID modules for Perl

VERSION=		1.6.2
DISTNAME=		uuid-${VERSION}
FULLPKGNAME-main=	ossp-uuid-${VERSION}
FULLPKGNAME-perl=	p5-ossp-UUID-${VERSION}
CATEGORIES=		devel

SHARED_LIBS +=	ossp-uuid            0.0      # 16.22
SHARED_LIBS +=	ossp-uuid++          0.0      # 16.22

REVISION-main=		2
REVISION-perl=		4

# Note there is a different libuuid in sysutils/e2fsprogs,-uuid.
# If you are porting something which needs libuuid, you may need
# to look there instead.

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.ossp.org/pkg/lib/uuid/

MASTER_SITES=	ftp://ftp.ossp.org/pkg/lib/uuid/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =		Yes
MULTI_PACKAGES=		-main -perl

WANTLIB-main=		c m stdc++

CATEGORIES-perl=	devel perl5
# libperl will show as "extra" but this should be kept as it depends on perl ABI
WANTLIB-perl=		perl ossp-uuid
LIB_DEPENDS-perl=	${BASE_PKGPATH}


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl --with-cxx \
			--without-php --without-pgsql \
			--includedir=${TRUEPREFIX}/include/ossp

post-install:
	mv ${PREFIX}/lib/pkgconfig/uuid.pc ${PREFIX}/lib/pkgconfig/ossp-uuid.pc
	rm -rf ${PREFIX}/libdata/perl5/${MACHINE_ARCH}-openbsd/

.include <bsd.port.mk>
