# $OpenBSD: Makefile,v 1.2 2009/08/16 12:59:27 msf Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}

RUN_DEPENDS =	:ruby-dm-core->=${VERSION}:databases/ruby-datamapper/core \
		::textproc/ruby-randexp

REGRESS_DEPENDS =	::databases/ruby-datamapper/validations \
			::databases/ruby-do_sqlite3 \
			::devel/ruby-parsetree

.include <bsd.port.mk>
