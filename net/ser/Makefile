# $OpenBSD: Makefile,v 1.7 2006/08/01 18:38:23 alek Exp $

COMMENT=	"SIP Express Router"

ONLY_FOR_ARCHS= i386 sparc

VERSION=	0.8.10
DISTNAME=	ser-${VERSION}_src
PKGNAME=	ser-${VERSION}
CATEGORIES=	net
WANTLIB=	c z 

MASTER_SITES=	${MASTER_SITE_BERLIOS:=ser/}

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

LIB_DEPENDS=	lib/mysql/mysqlclient.10::databases/mysql \
		expat.2::textproc/expat

do-install:
	cd ${WRKDIST}; ${MAKE_PROGRAM} PREFIX=${WRKINST}${TRUEPREFIX} install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ser
	${INSTALL_DATA} ${WRKDIST}/ser.cfg ${PREFIX}/share/examples/ser

.include <bsd.port.mk>
