# $OpenBSD: Makefile,v 1.14 2010/09/28 20:12:16 jeremy Exp $

SHARED_ONLY=	Yes

COMMENT=	access a PostgreSQL database from ruby

DISTNAME=	postgres-0.7.9.2008.01.28
PKGNAME=	ruby-${DISTNAME}
REVISION =      1
CATEGORIES=	databases

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org> 

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MODULES=	lang/ruby

LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS} \
		pq.>=2::databases/postgresql

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
