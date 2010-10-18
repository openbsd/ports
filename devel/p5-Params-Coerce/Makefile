# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:05 espie Exp $

COMMENT=	allow your classes to do coercion of parameters

DISTNAME=	Params-Coerce-0.14

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Util

.include <bsd.port.mk>
