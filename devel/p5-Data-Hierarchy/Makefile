# $OpenBSD: Makefile,v 1.8 2010/11/26 07:19:00 espie Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
DISTNAME=	Data-Hierarchy-0.34
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Clone>=0.15 \
		devel/p5-Test-Exception>=0.21
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
