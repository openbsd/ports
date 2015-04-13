# $OpenBSD: Makefile,v 1.3 2015/04/13 16:21:28 sthen Exp $

COMMENT =		perl SPF test-suite class

DISTNAME =		Mail-SPF-Test-v1.001
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		mail

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-YAML
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
