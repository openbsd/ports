# $OpenBSD: Makefile,v 1.23 2001/04/09 14:06:41 avsm Exp $

COMMENT=	"extract, list & test files in a ZIP archive"

DISTNAME=	unzip542
PKGNAME=	unzip-5.42
CATEGORIES=	archivers
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/ \
		ftp://ftp.info-zip.org/pub/infozip/src/ \
		ftp://ftp.uu.net/pub/archiving/zip/src/

HOMEPAGE=	http://www.info-zip.org/pub/infozip/Info-ZIP.html

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CF='-I. $$(LOC)' \
		LOC="${CFLAGS} -DUSE_UNSHRINK"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	bsd

WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	COPYING.OLD LICENSE README WHERE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
