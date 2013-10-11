# $OpenBSD: Makefile,v 1.27 2013/10/11 23:50:12 naddy Exp $

COMMENT=	module to map charset names registered with IANA

MODULES=	cpan
DISTNAME=	I18N-Charset-1.394
REVISION=	0
CATEGORIES=	misc

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

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
