# $OpenBSD: Makefile,v 1.26 2014/10/24 18:17:58 nigel Exp $

COMMENT=	perl parser that builds an HTML tree

MODULES=	cpan
DISTNAME=	HTML-Tree-5.03
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser>=3.46 \
		www/p5-HTML-Tagset>=3.02
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Fatal

CONFIGURE_STYLE =	modbuild

TEST_DEPENDS=		devel/p5-Test-Pod \
			devel/p5-Test-LeakTrace \
			devel/p5-Try-Tiny

.include <bsd.port.mk>
