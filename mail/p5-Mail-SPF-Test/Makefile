# $OpenBSD: Makefile,v 1.2 2013/03/11 11:23:52 espie Exp $

COMMENT =		perl SPF test-suite class

DISTNAME =		Mail-SPF-Test-v1.001
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		mail

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-YAML
BUILD_DEPENDS =		${RUN_DEPENDS}

do-install:
	cd ${WRKSRC} && ./Build --prefix=${PREFIX} --create_packlist=0 install

.include <bsd.port.mk>
