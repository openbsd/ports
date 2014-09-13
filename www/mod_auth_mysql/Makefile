# $OpenBSD: Makefile,v 1.25 2014/09/13 18:09:22 brad Exp $

COMMENT=	Apache MySQL authentication module

REVISION=	12
VERSION=	3.2
DISTNAME=	mod_auth_mysql-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://sourceforge.net/projects/mod-auth-mysql
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mod-auth-mysql/}
MODULES+=	apache-module

# Apache license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lib/mysql/mysqlclient

MODAPACHE_NAME=	auth_mysql

LIB_DEPENDS=    databases/mariadb

NO_TEST=	Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/mod_auth_mysql
	${INSTALL_MAN} ${WRKSRC}/{README,USAGE} ${PREFIX}/share/doc/mod_auth_mysql
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
