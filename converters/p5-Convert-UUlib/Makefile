# $OpenBSD: Makefile,v 1.23 2020/03/22 08:48:27 benoit Exp $

COMMENT=	interface to the uulib library

DISTNAME =	Convert-UUlib-1.71
EPOCH =		1
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB +=	c perl

BUILD_DEPENDS =	devel/p5-Canary-Stability

RUN_DEPENDS =	devel/p5-common-sense

.include <bsd.port.mk>
