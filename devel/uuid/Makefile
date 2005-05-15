# $OpenBSD: Makefile,v 1.9 2005/05/15 10:12:37 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	"ISO-C API and CLI for generating Universally Unique Identifiers"
COMMENT-perl=	"UUID modules for Perl"

DISTNAME=		uuid-1.2.0
FULLPKGNAME-perl= 	p5-UUID-1.2.0
CATEGORIES=		devel

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
.  if defined(PACKAGING)
LIB_DEPENDS+=		uuid.12::devel/uuid
.  endif
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl

.include <bsd.port.mk>
