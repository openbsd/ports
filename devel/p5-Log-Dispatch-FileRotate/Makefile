# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:59 sthen Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Log-Dispatch-FileRotate-1.26
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
