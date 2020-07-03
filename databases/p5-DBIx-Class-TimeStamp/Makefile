# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:36 sthen Exp $

COMMENT =	automatically set and update time based columns

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBIx-Class-TimeStamp-0.14
CATEGORIES =	databases
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-DateTime \
		databases/p5-DBIx-Class \
		databases/p5-DBIx-Class-DynamicDefault

TEST_DEPENDS =	devel/p5-Class-Accessor-Grouped \
			devel/p5-DateTime-Format-MySQL \
			devel/p5-DateTime-Format-SQLite \
			devel/p5-Time-Warp

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
