# $OpenBSD: Makefile,v 1.15 2006/02/08 23:23:09 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"ISO-C API and CLI for generating Universally Unique Identifiers"
COMMENT-perl=	"UUID modules for Perl"

VERSION=		1.3.2
DISTNAME=		uuid-${VERSION}
FULLPKGNAME=		uuid-${VERSION}p0
FULLPKGNAME-perl= 	p5-UUID-${VERSION}p2
CATEGORIES=		devel
SHARED_LIBS=		uuid	13.22

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.ossp.org/pkg/lib/uuid/

MASTER_SITES=	ftp://ftp.ossp.org/pkg/lib/uuid/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MULTI_PACKAGES=		-perl
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-perl"
CATEGORIES=		devel perl5
WANTLIB=
.  if defined(PACKAGING)
LIB_DEPENDS+=		uuid.12::devel/uuid
.  endif
.endif

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl

.include <bsd.port.mk>
