# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:13 sthen Exp $

COMMENT=	simple interface to subversion's editor interface

MODULES=	cpan
DISTNAME=	SVN-Simple-0.27
REVISION=	0
CATEGORIES=	devel 

CPAN_AUTHOR=	CLKAO

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-SVN->=1.1.1:devel/subversion,-perl
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
