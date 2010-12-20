# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 17:39:55 jeremy Exp $

SHARED_ONLY=		Yes

COMMENT=		C++ database API

DISTNAME=		deepfryed-dbicpp-74e3352
PKGNAME=		dbic++-0.4.1
CATEGORIES=		databases
HOMEPAGE=		http://github.com/deepfryed/dbicpp

SHARED_LIBS +=  dbdmysql                  0.0 # 0.0
SHARED_LIBS +=  dbdpg                     0.0 # 0.0

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# port-lib-depends-check says that e2fs-uuid and pcrecpp are
# Extra, but they are used in a .a file that doesn't have a
# .so shared library equivalent.
WANTLIB =		e2fs-uuid m mysqlclient pcrecpp pq stdc++ 

MASTER_SITES=		http://www.bsdfrog.org/OpenBSD/distfiles/

BUILD_DEPENDS=		devel/cmake \
			shells/bash
LIB_DEPENDS=		mysql-client->=5:databases/mysql \
			postgresql-client->=8.4:databases/postgresql \
			devel/pcre \
			sysutils/e2fsprogs

CONFIGURE_STYLE=	none
WRKDIST=		${WRKDIR}/${PKGNAME}

post-extract:
			cd ${WRKDIR} && mv ${DISTNAME} ${PKGNAME}

do-build:
			cd ${WRKSRC} && ${SET_ENV} ${MAKE_ENV} bash build.sh

do-install:
			cd ${WRKSRC} && ${SET_ENV} ${MAKE_ENV} \
				${SUDO} bash build.sh -i

NO_REGRESS=		Yes


.include <bsd.port.mk>
