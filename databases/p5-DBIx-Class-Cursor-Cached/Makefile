# $OpenBSD: Makefile,v 1.1.1.1 2012/04/08 21:01:07 sthen Exp $

COMMENT =	cursor class with built-in caching support

MODULES =	cpan
DISTNAME =	DBIx-Class-Cursor-Cached-1.001002
CATEGORIES =	databases

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		databases/p5-DBIx-Class

REGRESS_DEPENDS =	devel/p5-Cache-Cache \
			databases/p5-DBD-SQLite

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
