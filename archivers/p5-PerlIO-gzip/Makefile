# $OpenBSD: Makefile,v 1.4 2007/01/04 18:49:49 steven Exp $

COMMENT= 	"PerlIO layer to gzip/gunzip"

MODULES=	cpan

SHARED_ONLY=	Yes
DISTNAME=	PerlIO-gzip-0.18
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	z

.include <bsd.port.mk>
