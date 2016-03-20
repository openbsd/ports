# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:46 naddy Exp $

COMMENT =	perl module to deal with RFC 2047 encoded words

DISTNAME =	MIME-EncWords-1.014.3
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/p5-MIME-Charset

.include <bsd.port.mk>
