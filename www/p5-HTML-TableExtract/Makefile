# $OpenBSD: Makefile,v 1.19 2010/12/03 11:46:52 ajacoutot Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
DISTNAME=	HTML-TableExtract-2.10
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
