# $OpenBSD: Makefile,v 1.5 2010/11/15 00:22:54 espie Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}
REVISION =	1

RUN_DEPENDS =	STEM->=${VERSION}:databases/ruby-datamapper/core,${FLAVOR} \
		textproc/ruby-randexp,${FLAVOR}

REGRESS_DEPENDS =	databases/ruby-datamapper/validations,${FLAVOR} \
			databases/ruby-do_sqlite3,${FLAVOR} \
			devel/ruby-parsetree,${FLAVOR}

.include <bsd.port.mk>
