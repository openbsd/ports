# $OpenBSD: Makefile,v 1.14 2014/05/30 13:14:09 sthen Exp $

COMMENT=	web-based tool for managing racks of equipment

VER=		1.2.5-1
DISTNAME=	rackmonkey-${VER}
PKGNAME=	rackmonkey-${VER:S/-/./}

REVISION=	6

CATEGORIES=	www net databases

HOMEPAGE=	http://flux.org.uk/projects/rackmonkey/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+, icons CC:Attribution 2.5
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rackmonkey/}

MODULES =	perl

RUN_DEPENDS=	p5-DBD-SQLite-*|p5-DBD-Pg-*|p5-DBD-mysql-*:databases/p5-DBD-SQLite \
		misc/p5-Spreadsheet-WriteExcel \
		net/p5-Net-DNS \
		www/mod_perl \
		www/p5-HTML-Template \
		www/p5-HTML-Parser

NO_TEST=	Yes
PREFIX=		${VARBASE}/www
PKG_ARCH=	*

do-configure:
	find ${WRKSRC}/perl -type f -print0 | xargs -r0 ${MODPERL_BIN_ADJ}

# setup a sample database: not strictly necessary, but makes for
# easy end-user configuration for the simplest case.
# sqlite databases are arch-independent so PKG_ARCH=* is ok.
SAMPLEDB = db/rackmonkey.db.sample
do-build:
	cd ${WRKSRC}; mkdir db; \
	/usr/bin/sqlite3 ${SAMPLEDB} < sql/schema/schema.sqlite.sql; \
	/usr/bin/sqlite3 ${SAMPLEDB} < sql/data/default_data.sql; \
	/usr/bin/sqlite3 ${SAMPLEDB} < sql/data/sample_data.sql

do-install:
	find ${WRKSRC} -type f -and -name '*.orig' -print0 | xargs -r0 rm
	${INSTALL_DATA_DIR} ${PREFIX}/rackmonkey/db ${PREFIX}/htdocs/rackmonkey
	cd ${WRKSRC} && pax -rw conf db doc sql tmpl ${PREFIX}/rackmonkey
	cd ${WRKSRC}/www && pax -rw * ${PREFIX}/htdocs/rackmonkey
	cd ${WRKSRC}/perl && pax -rw * ${PREFIX}/htdocs/rackmonkey
	chown -R ${SHAREOWN}:${SHAREGRP} \
	    ${PREFIX}/rackmonkey \
	    ${PREFIX}/htdocs/rackmonkey

.include <bsd.port.mk>
