# $OpenBSD: Makefile,v 1.7 2012/08/23 15:08:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module for tracing memory leaks

DISTNAME=	Test-LeakTrace-0.13
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
