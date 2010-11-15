# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:54 espie Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}
REVISION =      1

RUN_DEPENDS =	STEM->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR} \
		security/ruby-bcrypt,${FLAVOR} \
		converters/ruby-json,${FLAVOR}

REGRESS_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
			databases/ruby-do_sqlite3,${FLAVOR} \
			textproc/ruby-fastercsv,${FLAVOR} \
			devel/ruby-uuidtools,${FLAVOR}

.include <bsd.port.mk>
