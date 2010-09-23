# $OpenBSD: Makefile,v 1.5 2010/09/23 22:30:30 jeremy Exp $

COMMENT =	DataMapper ORM plugin

DISTNAME =	merb_datamapper-${VERSION}
PKGNAME =	ruby-${DISTNAME}
REVISION =      1

RUN_DEPENDS =	:ruby-dm-core->=0.10.0:databases/ruby-datamapper/core \
		:ruby-dm-migrations->=0.10.0:databases/ruby-datamapper/migrations \
		:ruby-merb-core->=${VERSION}:www/ruby-merb/core

.include <bsd.port.mk>
