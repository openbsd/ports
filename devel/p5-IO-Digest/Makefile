# $OpenBSD: Makefile,v 1.8 2010/11/15 19:46:03 espie Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
DISTNAME=	IO-Digest-0.10
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	p5-PerlIO-via-dynamic->=0.11:devel/p5-PerlIO-via-dynamic
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
