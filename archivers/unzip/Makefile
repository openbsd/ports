# $OpenBSD: Makefile,v 1.20 2000/10/07 20:05:33 brad Exp $

DISTNAME=	unzip541
PKGNAME=	unzip-5.41
CATEGORIES=	archivers
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/

HOMEPAGE=	http://ftp.freesoftware.com/pub/infozip/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CF='-I. $$(LOC)' \
		LOC="${CFLAGS} -DUSE_UNSHRINK -DUSE_SMITH_CODE"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	bsd

WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	README COPYING WHERE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
