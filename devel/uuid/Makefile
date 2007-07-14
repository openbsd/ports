# $OpenBSD: Makefile,v 1.28 2007/07/14 06:20:55 sturm Exp $

SHARED_ONLY=	Yes

COMMENT-main=	"ISO-C API and CLI for generating UUIDs"
COMMENT-perl=	"UUID modules for Perl"
COMMENT-pgsql=	"UUID extension for PostgreSQL"

VERSION=		1.6.0
DISTNAME=		uuid-${VERSION}
FULLPKGNAME-main=	uuid-${VERSION}
FULLPKGNAME-perl= 	p5-UUID-${VERSION}p0
FULLPKGNAME-pgsql= 	postgresql-uuid-${VERSION}
CATEGORIES=		devel
SHARED_LIBS=		uuid	13.22 \
			uuid++	14.21

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.ossp.org/pkg/lib/uuid/

MASTER_SITES=	ftp://ftp.ossp.org/pkg/lib/uuid/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -perl -pgsql

WANTLIB-main=		c

CATEGORIES-perl=	devel perl5
WANTLIB-perl=
LIB_DEPENDS-perl=	uuid.>=12::devel/uuid

CATEGORIES-pgsql=	devel databases
WANTLIB-pgsql=		c
LIB_DEPENDS-pgsql=	uuid.>=12::devel/uuid
RUN_DEPENDS-pgsql=	:postgresql-server-*:databases/postgresql,-server
BUILD_DEPENDS+=		${RUN_DEPENDS-pgsql}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl --with-cxx \
			--without-php --with-pgsql

pre-build:
	@cp ${FILESDIR}/Makefile ${WRKSRC}/pgsql

.include <bsd.port.mk>
