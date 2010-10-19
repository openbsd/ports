# $OpenBSD: Makefile,v 1.7 2010/10/19 08:02:56 espie Exp $

COMMENT=	module to parse the content of tables in HTML text

MODULES=	cpan
DISTNAME=	HTML-TableContentParser-0.13
REVISION=	1
CATEGORIES=	www devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
