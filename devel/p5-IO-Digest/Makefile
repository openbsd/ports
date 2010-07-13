# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:12 sthen Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
DISTNAME=	IO-Digest-0.10
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PerlIO-via-dynamic->=0.11:devel/p5-PerlIO-via-dynamic
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
