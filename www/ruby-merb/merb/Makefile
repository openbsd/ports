# $OpenBSD: Makefile,v 1.10 2010/11/22 08:36:54 espie Exp $

COMMENT =	fast, lightweight MVC framework for Ruby

DISTNAME =	merb-${VERSION}
REVISION =	1

RUN_DEPENDS =	www/ruby-merb/more,${FLAVOR}>=${VERSION} \
		www/ruby-merb/datamapper,${FLAVOR}>=${VERSION} \
		databases/ruby-do_sqlite3,${FLAVOR} \
		databases/ruby-datamapper/aggregates,${FLAVOR} \
		databases/ruby-datamapper/serializer,${FLAVOR} \
		databases/ruby-datamapper/sweatshop,${FLAVOR} \
		databases/ruby-datamapper/timestamps,${FLAVOR} \
		databases/ruby-datamapper/types,${FLAVOR} \
		databases/ruby-datamapper/validations,${FLAVOR}

.include <bsd.port.mk>
