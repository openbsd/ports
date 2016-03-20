# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:10 naddy Exp $

COMMENT =		fast, safe DBI connection and transaction management

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DBIx-Connector-0.53
CATEGORIES =		databases
CPAN_AUTHOR =		DWHEELER

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/p5-Test-MockModule>=0.05
RUN_DEPENDS =		databases/p5-DBI>=1.605
TEST_DEPENDS =		devel/p5-Test-Pod>=1.41 \
			devel/p5-Test-Pod-Coverage>=1.06

CONFIGURE_STYLE =	perl modbuild

.include <bsd.port.mk>
