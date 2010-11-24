# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}>=${VERSION} \
		security/ruby-bcrypt,${MODRUBY_FLAVOR} \
		converters/ruby-json,${MODRUBY_FLAVOR}

REGRESS_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR} \
			devel/ruby-uuidtools,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
