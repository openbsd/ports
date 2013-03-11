# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:21 espie Exp $

COMMENT=	simple interface to subversion's editor interface#'

MODULES=	cpan
DISTNAME=	SVN-Simple-0.27
REVISION=	2
CATEGORIES=	devel

CPAN_AUTHOR=	CLKAO

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ENV=	LD_PRELOAD=libpthread.so # XXX remove when perl is -lpthread
MAKE_ENV=	LD_PRELOAD=libpthread.so # XXX remove when perl is -lpthread

RUN_DEPENDS=	devel/subversion,-perl>=1.1.1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
