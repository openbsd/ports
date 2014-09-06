# $OpenBSD: Makefile,v 1.3 2014/09/06 15:49:50 schwarze Exp $

COMMENT =	perl interface to the NTLM authentication mechanism

DISTNAME =	NTLM-1.09
PKGNAME =	p5-Authen-${DISTNAME}
CATEGORIES =	security

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
CPAN_AUTHOR =	NBEBOUT

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/p5-Digest-HMAC

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
