# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}
REVISION =      1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-dm-core->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-bcrypt-*:security/ruby-bcrypt,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-json-*:converters/ruby-json,${FLAVOR}

REGRESS_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
			:${MODRUBY_PKG_PREFIX}-do_sqlite3-*:databases/ruby-do_sqlite3,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-fastercsv-*:textproc/ruby-fastercsv,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-uuidtools-*:devel/ruby-uuidtools,${FLAVOR}

.include <bsd.port.mk>
