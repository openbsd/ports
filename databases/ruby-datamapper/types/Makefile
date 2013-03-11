# $OpenBSD: Makefile,v 1.12 2013/03/11 02:52:08 espie Exp $

COMMENT =	extra types for DataMapper models

DISTNAME =	dm-types-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		converters/ruby-json,${MODRUBY_FLAVOR}>=1.4,<2.0 \
		textproc/ruby-fastercsv,${MODRUBY_FLAVOR}>=1.5.3,<1.6 \
		devel/ruby-uuidtools,${MODRUBY_FLAVOR}>=2.1.1,<2.2 \
		devel/ruby-stringex,${MODRUBY_FLAVOR}>=1.1.0,<1.2

TEST_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR} \
			devel/ruby-uuidtools,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
