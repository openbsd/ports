# $OpenBSD: Makefile,v 1.9 2015/01/21 14:40:10 sthen Exp $

COMMENT=	implementation of the OAuth protocol

DISTNAME=	Net-OAuth-0.25
REVISION=	1

CATEGORIES=	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Universal-require \
		security/p5-Digest-HMAC \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
