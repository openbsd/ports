# $OpenBSD: Makefile,v 1.24 2020/07/03 21:44:32 sthen Exp $

COMMENT=	interface to the uulib library

DISTNAME =	Convert-UUlib-1.71
EPOCH =		1
CATEGORIES=	converters
MODULES=	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB +=	c perl

BUILD_DEPENDS =	devel/p5-Canary-Stability

RUN_DEPENDS =	devel/p5-common-sense

.include <bsd.port.mk>
