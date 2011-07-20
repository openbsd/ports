# $OpenBSD: Makefile,v 1.1.1.1 2011/07/20 21:42:49 schwarze Exp $

COMMENT =	perl interface to the NTLM authentication mechanism

DISTNAME =	NTLM-1.08
PKGNAME =	p5-Authen-${DISTNAME}
CATEGORIES =	security
MAINTAINER =	Ingo Schwarze <schwarze@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan
CPAN_AUTHOR =	NBEBOUT

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/p5-Digest-HMAC

MAKE_ENV =	TEST_POD=1

.include <bsd.port.mk>
