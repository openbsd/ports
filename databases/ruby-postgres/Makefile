# $OpenBSD: Makefile,v 1.17 2010/11/15 00:22:54 espie Exp $

COMMENT=	access a PostgreSQL database from ruby

DISTNAME=	postgres-0.7.9.2008.01.28
REVISION =      2
CATEGORIES=	databases

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org> 

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	pq>=2

MODULES=	lang/ruby

LIB_DEPENDS=	databases/postgresql

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
