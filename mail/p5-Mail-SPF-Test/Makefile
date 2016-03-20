# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:47 naddy Exp $

COMMENT =		perl SPF test-suite class

DISTNAME =		Mail-SPF-Test-v1.001
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		mail

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-YAML
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
