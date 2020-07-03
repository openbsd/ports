# $OpenBSD: Makefile,v 1.36 2020/07/03 21:45:30 sthen Exp $

COMMENT=	module to map charset names registered with IANA

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	I18N-Charset-1.418
CATEGORIES=	misc
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		devel/p5-IO-String \
		devel/p5-App-Info>=0.23 \
		devel/p5-IO-Capture>=0.03

TEST_DEPENDS=converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8 \
		converters/p5-Unicode-MapUTF8 \
		devel/p5-IO-Capture

.include <bsd.port.mk>
