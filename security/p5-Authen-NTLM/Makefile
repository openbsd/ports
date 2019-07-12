# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:06 sthen Exp $

COMMENT =	perl interface to the NTLM authentication mechanism

DISTNAME =	NTLM-1.09
PKGNAME =	p5-Authen-${DISTNAME}
CATEGORIES =	security

# perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
CPAN_AUTHOR =	NBEBOUT

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/p5-Digest-HMAC

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
