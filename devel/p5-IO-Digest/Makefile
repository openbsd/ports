# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:32 ajacoutot Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
DISTNAME=	IO-Digest-0.10
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-PerlIO-via-dynamic>=0.11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
