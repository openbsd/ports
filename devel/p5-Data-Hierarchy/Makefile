# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
DISTNAME=	Data-Hierarchy-0.34
REVISION=	0
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
