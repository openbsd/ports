# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=	allow your classes to do coercion of parameters

DISTNAME=	Params-Coerce-0.14
REVISION=	0

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
RUN_DEPENDS=	devel/p5-Params-Util

.include <bsd.port.mk>
