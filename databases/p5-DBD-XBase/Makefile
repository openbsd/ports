# $OpenBSD: Makefile,v 1.2 2019/03/18 21:22:26 landry Exp $

COMMENT =	reads and writes XBase (dbf) files, includes DBI support

DISTNAME =	DBD-XBase-1.08
REVISION =	0

CATEGORIES =	databases

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	databases/p5-DBI
PKG_ARCH =		*
post-install:
	mv ${PREFIX}/bin/dbfdump{,.pl}

.include <bsd.port.mk>
