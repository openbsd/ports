COMMENT =	exporter with the features of Sub::Exporter

DISTNAME =	Exporter-Tiny-1.002002
REVISION =	0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Warnings

PKG_ARCH =		*

post-extract:
	rm -rf -- ${WRKDIST}/inc

.include <bsd.port.mk>
