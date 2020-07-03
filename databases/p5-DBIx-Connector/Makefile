# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:36 sthen Exp $

COMMENT =		fast, safe DBI connection and transaction management

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DBIx-Connector-0.56
CATEGORIES =		databases
CPAN_AUTHOR =		DWHEELER
REVISION =		0

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Artistic
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		databases/p5-DBI>=1.605
TEST_DEPENDS =		devel/p5-Test-MockModule>=0.05

CONFIGURE_STYLE =	perl modbuild

.include <bsd.port.mk>
