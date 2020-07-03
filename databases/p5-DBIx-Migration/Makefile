# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:36 sthen Exp $

COMMENT =	seamless DB up- and downgrades

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBIx-Migration-0.07
CATEGORIES =	databases
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Class-Accessor \
		devel/p5-File-Slurp \
		databases/p5-DBD-SQLite

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
