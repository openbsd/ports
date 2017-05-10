# $OpenBSD: Makefile,v 1.33 2017/05/10 20:11:16 benoit Exp $

COMMENT=	module to map charset names registered with IANA

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	I18N-Charset-1.417
CATEGORIES=	misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		devel/p5-IO-String \
		devel/p5-App-Info>=0.23 \
		devel/p5-IO-Capture>=0.03

TEST_DEPENDS=converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8 \
		converters/p5-Unicode-MapUTF8 \
		devel/p5-IO-Capture

.include <bsd.port.mk>
