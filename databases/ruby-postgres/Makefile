# $OpenBSD: Makefile,v 1.8 2008/01/07 21:28:31 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	access a PostgreSQL database from ruby

DISTNAME=	postgres-0.7.9.2008.01.03
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	databases

MAINTAINER=	Markus Friedl <markus@openbsd.org> 

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=ruby-pg/}

MODULES=	lang/ruby

LIB_DEPENDS=	pq.>=2::databases/postgresql \
		ruby.>=1::lang/ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
