# $OpenBSD: Makefile,v 1.1.1.1 2009/10/05 12:52:16 kevlo Exp $

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
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Util

.include <bsd.port.mk>
