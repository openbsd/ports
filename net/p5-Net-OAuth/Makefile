# $OpenBSD: Makefile,v 1.10 2015/08/25 08:06:50 benoit Exp $

COMMENT=	implementation of the OAuth protocol

DISTNAME =	Net-OAuth-0.28

CATEGORIES=	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Universal-require \
		security/p5-Digest-HMAC \
		security/p5-Digest-SHA1 \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
