# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:11 sthen Exp $

COMMENT=	represent a series of changes in annotate form

MODULES=	cpan
DISTNAME=	Algorithm-Annotate-0.10
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Algorithm-Diff->=1.1901:devel/p5-Algorithm-Diff
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
