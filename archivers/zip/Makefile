# $OpenBSD: Makefile,v 1.16 2000/03/26 22:12:27 brad Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

DISTNAME=	zip23
PKGNAME=	zip-2.3
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

MAKE_FILE=	unix/Makefile
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -DUNIX"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

ALL_TARGET=	generic

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zip
	cd ${WRKSRC}; ${INSTALL_DATA} README WHERE ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
