# $OpenBSD: Makefile,v 1.20 2000/07/24 01:56:45 brad Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

DISTNAME=	zip23
PKGNAME=	zip-2.3
CATEGORIES=	archivers
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/

HOMEPAGE=	http://www.freesoftware.com/pub/infozip/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -DUNIX"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	generic

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zip
	cd ${WRKSRC}; ${INSTALL_DATA} README WHERE ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
