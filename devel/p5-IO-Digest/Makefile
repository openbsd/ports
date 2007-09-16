# $OpenBSD: Makefile,v 1.5 2007/09/16 02:53:06 merdely Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
DISTNAME=	IO-Digest-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PerlIO-via-dynamic->=0.11:devel/p5-PerlIO-via-dynamic
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
