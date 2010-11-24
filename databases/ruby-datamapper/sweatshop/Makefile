# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}>=${VERSION} \
		textproc/ruby-randexp,${MODRUBY_FLAVOR}

REGRESS_DEPENDS =	databases/ruby-datamapper/validations,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			devel/ruby-parsetree,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
