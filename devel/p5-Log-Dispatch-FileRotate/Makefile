# $OpenBSD: Makefile,v 1.13 2020/02/17 16:12:41 benoit Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Log-Dispatch-FileRotate-1.36
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		converters/p5-DateManip \
			devel/p5-Log-Dispatch \
			devel/p5-Params-Validate \
			devel/p5-Log-Log4perl
TEST_DEPENDS =		devel/p5-Path-Tiny \
			devel/p5-Test-Warn

.include <bsd.port.mk>
