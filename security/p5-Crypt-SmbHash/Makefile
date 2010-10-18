# $OpenBSD: Makefile,v 1.6 2010/10/18 21:41:46 espie Exp $

COMMENT=	Perl module implementing lanman and nt md4 hash functions

MODULES=	cpan
DISTNAME=	Crypt-SmbHash-0.12
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# same license as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-Digest-MD4

.include <bsd.port.mk>
