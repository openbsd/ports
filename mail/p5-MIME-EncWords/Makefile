# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:33 sthen Exp $

COMMENT =	perl module to deal with RFC 2047 encoded words

DISTNAME =	MIME-EncWords-1.014.3
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/p5-MIME-Charset

.include <bsd.port.mk>
