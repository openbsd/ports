# $OpenBSD: Makefile,v 1.4 2020/11/04 10:20:17 benoit Exp $

COMMENT =	PSGI compliant HTTP Entity Parser

DISTNAME =	HTTP-Entity-Parser-0.24

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-MaybeXS>=1.003007 \
			devel/p5-Hash-MultiValue \
			devel/p5-Stream-Buffered \
			www/p5-HTTP-MultiPartParser \
			www/p5-WWW-Form-UrlEncoded>=0.23
TEST_DEPENDS =		www/p5-HTTP-Message>=6

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
