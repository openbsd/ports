# $OpenBSD: Makefile,v 1.22 2020/02/05 07:36:01 benoit Exp $

COMMENT=	interface to the uulib library

DISTNAME =	Convert-UUlib-1.5
EPOCH =		1
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

BUILD_DEPENDS =	devel/p5-Canary-Stability

.include <bsd.port.mk>
