# $OpenBSD: Makefile,v 1.13 2010/10/19 08:02:55 espie Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
DISTNAME=	HTML-Format-2.04
REVISION=	1
CATEGORIES=	www devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-HTML-Tree-*:www/p5-HTML-Tree \
		:p5-Font-AFM-*:textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
