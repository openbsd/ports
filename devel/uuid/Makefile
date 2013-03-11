# $OpenBSD: Makefile,v 1.45 2013/03/11 10:50:31 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	ISO-C API and CLI for generating UUIDs
COMMENT-perl=	UUID modules for Perl

VERSION=		1.6.2
DISTNAME=		uuid-${VERSION}
FULLPKGNAME-main=	ossp-uuid-${VERSION}
FULLPKGNAME-perl= 	p5-ossp-UUID-${VERSION}
CATEGORIES=		devel
SHARED_LIBS=		uuid	13.22 \
			uuid++	14.21

REVISION-main=		1
REVISION-perl=		2

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
WANTLIB-perl=		c uuid>=12
LIB_DEPENDS-perl=	${BASE_PKGPATH}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl --with-cxx \
			--without-php --without-pgsql

post-install:
	mv ${PREFIX}/lib/pkgconfig/uuid.pc ${PREFIX}/lib/pkgconfig/ossp-uuid.pc

.include <bsd.port.mk>
