# $OpenBSD: Makefile,v 1.4 2020/07/03 21:44:35 sthen Exp $

COMMENT =	reads and writes XBase (dbf) files, includes DBI support

DISTNAME =	DBD-XBase-1.08
REVISION =	1

CATEGORIES =	databases

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =	databases/p5-DBI
PKG_ARCH =		*
post-install:
	mv ${PREFIX}/bin/dbfdump{,.pl}

.include <bsd.port.mk>
