# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:40:59 bernd Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}

RUN_DEPENDS =	::databases/ruby-datamapper/core \
		::textproc/ruby-randexp

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::databases/ruby-datamapper/validations \
			::databases/ruby-do_sqlite3 \
			::devel/ruby-parsetree

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
