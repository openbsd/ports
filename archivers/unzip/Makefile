# $OpenBSD: Makefile,v 1.28 2002/03/21 20:35:41 espie Exp $

COMMENT=	"extract, list & test files in a ZIP archive"

DISTNAME=	unzip542
PKGNAME=	unzip-5.42
CATEGORIES=	archivers
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.uu.net/pub/archiving/zip/src/ \
		ftp://ftp.icce.rug.nl/infozip/src/

HOMEPAGE=	http://www.ctan.org/tex-archive/tools/zip/info-zip/UnZip.html

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

do-regress:
	cd ${WRKBUILD} && ./unzip -x -a -o testmake.zip
	cmp -s ${WRKBUILD}/notes files/notes

.include <bsd.port.mk>
