# $OpenBSD: Makefile,v 1.3 2003/04/10 18:08:57 jsyn Exp $

COMMENT=	"SIP Express Router"

ONLY_FOR_ARCHS= i386 sparc64

VERSION=	0.8.10
DISTNAME=	ser-${VERSION}_src
PKGNAME=	ser-${VERSION}
CATEGORIES=	net

MASTER_SITES+=	ftp://ftp.berlios.de/pub/ser/${VERSION}/src/

HOMEPAGE=	http://www.iptel.org/ser/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/ser-${VERSION}

USE_GMAKE=	Yes

ALL_TARGET=	all ser.cfg

LIB_DEPENDS=	mysqlclient.10:mysql-client-3.23.*:databases/mysql \
		expat.2::textproc/expat

do-install:
	cd ${WRKDIST}; ${MAKE_PROGRAM} PREFIX=${WRKINST}${TRUEPREFIX} install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ser
	${INSTALL_DATA} ${WRKDIST}/ser.cfg ${PREFIX}/share/examples/ser

.include <bsd.port.mk>
