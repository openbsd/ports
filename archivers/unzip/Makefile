# $OpenBSD: Makefile,v 1.17 2000/03/26 22:34:28 brad Exp $

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

MAKE_FILE=	unix/Makefile
MAKE_FLAGS=	CC="${CC}" LD="${CC}" LOC="${CFLAGS} -DUSE_UNSHRINK" \
		CF='-I. $$(LOC)'
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

ALL_TARGET=	bsd

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC}; ${INSTALL_DATA} README COPYING WHERE ${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
