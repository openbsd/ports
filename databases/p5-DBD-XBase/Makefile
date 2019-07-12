# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:55 sthen Exp $

COMMENT =	reads and writes XBase (dbf) files, includes DBI support

DISTNAME =	DBD-XBase-1.08
REVISION =	0

CATEGORIES =	databases

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =	databases/p5-DBI
PKG_ARCH =		*
post-install:
	mv ${PREFIX}/bin/dbfdump{,.pl}

.include <bsd.port.mk>
