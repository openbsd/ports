# $OpenBSD: Makefile,v 1.22 2012/10/21 15:56:42 espie Exp $

COMMENT=	access a PostgreSQL database from ruby

DISTNAME=	postgres-0.7.9.2008.01.28
REVISION =	6
CATEGORIES=	databases

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS =	ruby18
FLAVOR =	ruby18

WANTLIB=	pq>=2

MODULES=	lang/ruby

LIB_DEPENDS=	databases/postgresql

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
