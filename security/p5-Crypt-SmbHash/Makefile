# $OpenBSD: Makefile,v 1.4 2009/09/09 06:08:09 kevlo Exp $

COMMENT=	Perl module implementing lanman and nt md4 hash functions

MODULES=	cpan
DISTNAME=	Crypt-SmbHash-0.12
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# same license as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-Digest-MD4

.include <bsd.port.mk>
