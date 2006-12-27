# $OpenBSD: Makefile,v 1.3 2006/12/27 12:49:29 steven Exp $

COMMENT= 	"PerlIO layer to gzip/gunzip"

MODULES=	cpan

SHARED_ONLY=	Yes
DISTNAME=	PerlIO-gzip-0.18
PKGNAME=	${DISTNAME}p0
CATEGORIES=	archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	z

.include <bsd.port.mk>
