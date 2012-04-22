# $OpenBSD: Makefile,v 1.1.1.1 2012/04/22 20:36:53 sthen Exp $

COMMENT =	automatically set and update time based columns

MODULES =	cpan
DISTNAME =	DBIx-Class-TimeStamp-0.14
CATEGORIES =	databases

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-DateTime \
		databases/p5-DBIx-Class \
		databases/p5-DBIx-Class-DynamicDefault

REGRESS_DEPENDS =	devel/p5-Class-Accessor-Grouped \
			devel/p5-DateTime-Format-MySQL \
			devel/p5-DateTime-Format-SQLite \
			devel/p5-Time-Warp

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
