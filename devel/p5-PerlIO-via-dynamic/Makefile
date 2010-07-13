# $OpenBSD: Makefile,v 1.7 2010/07/13 19:46:13 sthen Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
DISTNAME=	PerlIO-via-dynamic-0.13
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
