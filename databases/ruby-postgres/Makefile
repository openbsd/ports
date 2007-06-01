# $OpenBSD: Makefile,v 1.6 2007/06/01 11:00:14 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"access a PostgreSQL database from ruby"

DISTNAME=	ruby-postgres-0.7.1.2006.04.06
PKGNAME=	${DISTNAME}p2
CATEGORIES=	databases

MAINTAINER=	Markus Friedl <markus@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=ruby-postgres/}

MODULES=	lang/ruby

LIB_DEPENDS=	pq.>=2::databases/postgresql \
		ruby.>=1::lang/ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
