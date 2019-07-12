# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:35 sthen Exp $

COMMENT =		perl SPF test-suite class

DISTNAME =		Mail-SPF-Test-v1.001
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		mail

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-YAML
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
