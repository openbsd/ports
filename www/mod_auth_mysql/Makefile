# $OpenBSD: Makefile,v 1.10 2007/06/26 19:19:46 simon Exp $

COMMENT=	"Apache MySQL authentication module"

VERSION=	3.2
DISTNAME=	mod_auth_mysql-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://sourceforge.net/projects/mod-auth-mysql
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mod-auth-mysql/}
MODULES+=	apache-module

# Apache license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	auth_mysql

LIB_DEPENDS=    lib/mysql/mysqlclient.>=10::databases/mysql

NO_REGRESS=	Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/mod_auth_mysql
	${INSTALL_MAN} ${WRKSRC}/{README,USAGE} ${PREFIX}/share/doc/mod_auth_mysql
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
