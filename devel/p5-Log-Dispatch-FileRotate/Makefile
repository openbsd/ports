# $OpenBSD: Makefile,v 1.11 2017/05/10 12:10:05 benoit Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Log-Dispatch-FileRotate-1.26
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		converters/p5-DateManip \
			devel/p5-Log-Dispatch \
			devel/p5-Params-Validate \
			devel/p5-Log-Log4perl
TEST_DEPENDS =		devel/p5-Path-Tiny \
			devel/p5-Test-Warn

.include <bsd.port.mk>
