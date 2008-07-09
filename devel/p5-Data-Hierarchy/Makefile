# $OpenBSD: Makefile,v 1.5 2008/07/09 09:10:04 kevlo Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
DISTNAME=	Data-Hierarchy-0.34
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Clone->=0.15:devel/p5-Clone \
		:p5-Test-Exception->=0.21:devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
