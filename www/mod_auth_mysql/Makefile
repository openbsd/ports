# $OpenBSD: Makefile,v 1.24 2014/03/13 17:33:27 sthen Exp $

COMMENT=	Apache MySQL authentication module

REVISION=	11
VERSION=	3.2
DISTNAME=	mod_auth_mysql-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://sourceforge.net/projects/mod-auth-mysql
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mod-auth-mysql/}
MODULES+=	apache-module

# Apache license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lib/mysql/mysqlclient>=10

MODAPACHE_NAME=	auth_mysql

LIB_DEPENDS=    databases/mysql

NO_TEST=	Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/mod_auth_mysql
	${INSTALL_MAN} ${WRKSRC}/{README,USAGE} ${PREFIX}/share/doc/mod_auth_mysql
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
