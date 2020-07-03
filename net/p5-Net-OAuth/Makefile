# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:34 sthen Exp $

COMMENT=	implementation of the OAuth protocol

DISTNAME =	Net-OAuth-0.28
REVISION =	0

CATEGORIES=	net

# Perl
PERMIT_PACKAGE =		Yes

MODULES=	cpan
PKG_ARCH=	*
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Universal-require \
		security/p5-Digest-HMAC \
		security/p5-Digest-SHA1 \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
