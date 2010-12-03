# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:25 ajacoutot Exp $

COMMENT=	represent a series of changes in annotate form

MODULES=	cpan
DISTNAME=	Algorithm-Annotate-0.10
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GROFF =	Yes
RUN_DEPENDS=	devel/p5-Algorithm-Diff>=1.1901
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
