# $OpenBSD: Makefile,v 1.52 2015/02/06 21:37:04 naddy Exp $

COMMENT=	extract, list & test files in a ZIP archive

VERSION=	6.0
DISTNAME=	unzip${VERSION:S/.//}
PKGNAME=	unzip-${VERSION}
REVISION =	6
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=infozip/} \
		ftp://ftp.info-zip.org/pub/infozip/src/

HOMEPAGE =	http://www.info-zip.org/UnZip.html

# Conditional
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CF='-I. $$(LOC)' \
		LOC="${CFLAGS} -DUSE_UNSHRINK -DNO_LCHMOD"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	bsd

DOCS=	COPYING.OLD LICENSE README WHERE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unzip

do-test:
	cd ${WRKBUILD} && ./unzip -x -a -o testmake.zip
	cmp -s ${WRKBUILD}/notes ${FILESDIR}/notes

.include <bsd.port.mk>
