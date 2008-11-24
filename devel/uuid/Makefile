# $OpenBSD: Makefile,v 1.32 2008/11/24 15:37:00 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	ISO-C API and CLI for generating UUIDs
COMMENT-perl=	UUID modules for Perl

VERSION=		1.6.0
DISTNAME=		uuid-${VERSION}
FULLPKGNAME-main=	uuid-${VERSION}
FULLPKGNAME-perl= 	p5-UUID-${VERSION}p1
CATEGORIES=		devel
SHARED_LIBS=		uuid	13.22 \
			uuid++	14.21

# Note there is a different libuuid in sysutils/e2fsprogs,-uuid.
# If you are porting something which needs libuuid, you may need
# to look there instead.

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.ossp.org/pkg/lib/uuid/

MASTER_SITES=	ftp://ftp.ossp.org/pkg/lib/uuid/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -perl

WANTLIB-main=		c

CATEGORIES-perl=	devel perl5
WANTLIB-perl=
LIB_DEPENDS-perl=	uuid.>=12::devel/uuid

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl --with-cxx \
			--without-php --without-pgsql

.include <bsd.port.mk>
