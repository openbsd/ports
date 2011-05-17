# $OpenBSD: Makefile,v 1.43 2011/05/17 19:01:39 landry Exp $

COMMENT=	extract, list & test files in a ZIP archive

VERSION=	6.0
DISTNAME=	unzip${VERSION:S/.//}
PKGNAME=	unzip-${VERSION}
REVISION=	0
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=infozip/} \
		http://mirror.switch.ch/ftp/mirror/infozip/src/ \
		ftp://ftp.info-zip.org/pub/infozip/src/

HOMEPAGE=	http://www.ctan.org/tex-archive/tools/zip/info-zip/UnZip.html

# Conditional
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CF='-I. $$(LOC)' \
		LOC="${CFLAGS} -DUSE_UNSHRINK -DNO_LCHMOD -DNO_LCHOWN"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"
USE_GROFF =	Yes

MAKE_FILE=	unix/Makefile

ALL_TARGET=	bsd

DOCS=	COPYING.OLD LICENSE README WHERE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unzip

do-regress:
	cd ${WRKBUILD} && ./unzip -x -a -o testmake.zip
	cmp -s ${WRKBUILD}/notes files/notes

.include <bsd.port.mk>
