# $OpenBSD: Makefile,v 1.8 2006/08/04 00:10:42 espie Exp $

COMMENT=	"Apache MySQL authentication module"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

VERSION=	3.2
DISTNAME=	mod_auth_mysql-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Sam Smith <S@mSmith.net>

HOMEPAGE=	http://sourceforge.net/projects/mod-auth-mysql
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mod-auth-mysql/}

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

LIB_DEPENDS=    lib/mysql/mysqlclient.>=10::databases/mysql
BUILD_DEPENDS=  ${LIB_DEPENDS}

NO_REGRESS=	Yes

post-build:
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_auth_mysql-enable \
		> ${WRKBUILD}/mod_auth_mysql-enable

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mod_auth_mysql.so ${PREFIX}/lib/
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_mysql-enable ${PREFIX}/sbin/
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/mod_auth_mysql
	${INSTALL_MAN} ${WRKSRC}/{README,USAGE} ${PREFIX}/share/doc/mod_auth_mysql

.include <bsd.port.mk>
