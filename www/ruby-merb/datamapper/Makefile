# $OpenBSD: Makefile,v 1.4 2010/01/10 08:46:04 msf Exp $

COMMENT =	DataMapper ORM plugin

DISTNAME =	merb_datamapper-${VERSION}
PKGNAME =	ruby-${DISTNAME}p0

RUN_DEPENDS =	:ruby-dm-core->=0.10.0:databases/ruby-datamapper/core \
		:ruby-dm-migrations->=0.10.0:databases/ruby-datamapper/migrations \
		:ruby-merb-core->=${VERSION}:www/ruby-merb/core

.include <bsd.port.mk>
