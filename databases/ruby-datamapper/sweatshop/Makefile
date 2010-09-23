# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:25 jeremy Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}
REVISION =	0

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core \
		::textproc/ruby-randexp

REGRESS_DEPENDS =	::databases/ruby-datamapper/validations \
			::databases/ruby-do_sqlite3 \
			::devel/ruby-parsetree

.include <bsd.port.mk>
