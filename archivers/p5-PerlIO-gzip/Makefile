# $OpenBSD: Makefile,v 1.6 2008/10/02 20:30:43 simon Exp $

COMMENT= 	PerlIO layer to gzip/gunzip

MODULES=	cpan

SHARED_ONLY=	Yes
DISTNAME=	PerlIO-gzip-0.18
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	z

.include <bsd.port.mk>
