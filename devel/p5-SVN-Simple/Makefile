# $OpenBSD: Makefile,v 1.9 2010/11/26 07:19:01 espie Exp $

COMMENT=	simple interface to subversion's editor interface

MODULES=	cpan
DISTNAME=	SVN-Simple-0.27
REVISION=	0
CATEGORIES=	devel 
USE_GROFF =	Yes

CPAN_AUTHOR=	CLKAO

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/subversion,-perl>=1.1.1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
