# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:39 sthen Exp $

COMMENT =	perl interface to the NTLM authentication mechanism

DISTNAME =	NTLM-1.09
PKGNAME =	p5-Authen-${DISTNAME}
CATEGORIES =	security
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
CPAN_AUTHOR =	NBEBOUT

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/p5-Digest-HMAC

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
