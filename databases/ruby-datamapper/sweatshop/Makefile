# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}
REVISION =	1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-dm-core->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-randexp-*:textproc/ruby-randexp,${FLAVOR}

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-dm-validations-*:databases/ruby-datamapper/validations,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-do_sqlite3-*:databases/ruby-do_sqlite3,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-parsetree-*:devel/ruby-parsetree,${FLAVOR}

.include <bsd.port.mk>
