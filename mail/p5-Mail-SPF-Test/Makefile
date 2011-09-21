# $OpenBSD: Makefile,v 1.1.1.1 2011/09/21 08:01:26 giovanni Exp $

COMMENT =		perl SPF test-suite class

DISTNAME =		Mail-SPF-Test-v1.001
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		mail

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-YAML
BUILD_DEPENDS =		${RUN_DEPENDS}

do-install:
	cd ${WRKSRC} && ./Build --prefix=${PREFIX} --create_packlist=0 install

.include <bsd.port.mk>
