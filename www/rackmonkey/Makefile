# $OpenBSD: Makefile,v 1.5 2010/11/24 19:08:38 sthen Exp $

COMMENT=	web-based tool for managing racks of equipment

VER=		1.2.5-1
DISTNAME=	rackmonkey-${VER}
PKGNAME=	rackmonkey-${VER:S/-/./}

REVISION=	2

CATEGORIES=	www net databases

HOMEPAGE=	http://flux.org.uk/projects/rackmonkey/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+, icons CC:Attribution 2.5
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rackmonkey/}

# to setup a sample database (not strictly necessary, but makes for
# easy end-user configuration for the simplest case). sqlite databases
# are arch-independent so PKG_ARCH=* is ok.
BUILD_DEPENDS=	databases/sqlite3

RUN_DEPENDS=	p5-DBD-SQLite-*|p5-DBD-Pg-*|p5-DBD-mysql-*:databases/p5-DBD-SQLite \
		misc/p5-Spreadsheet-WriteExcel \
		net/p5-Net-DNS \
		www/mod_perl \
		www/p5-HTML-Template \
		www/p5-HTML-Parser

NO_REGRESS=	Yes
PREFIX=		/var/www
PKG_ARCH=	*

do-configure:
	find ${WRKSRC}/perl -type f -print0 | \
	    xargs -r0 perl -pi -e 's,#!/usr/bin/env perl,#!/usr/bin/perl,'

SAMPLEDB = db/rackmonkey.db.sample
do-build:
	cd ${WRKSRC}; mkdir db; \
	${LOCALBASE}/bin/sqlite3 ${SAMPLEDB} < sql/schema/schema.sqlite.sql; \
	${LOCALBASE}/bin/sqlite3 ${SAMPLEDB} < sql/data/default_data.sql; \
	${LOCALBASE}/bin/sqlite3 ${SAMPLEDB} < sql/data/sample_data.sql
	
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
