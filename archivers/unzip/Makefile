# $OpenBSD: Makefile,v 1.41 2010/04/25 10:36:05 jsg Exp $

COMMENT=	extract, list & test files in a ZIP archive

VERSION=	6.0
DISTNAME=	unzip${VERSION:S/.//}
PKGNAME=	unzip-${VERSION}
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

MAKE_FLAGS=	CC="${CC}" LD="${CC}" CF='-I. $$(LOC)'
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

# Workaround compiler bug on hppa which causes crashes
.if ${MACHINE_ARCH} == "hppa"
MAKE_FLAGS+=	LOC="${CFLAGS} -O0 -DUSE_UNSHRINK -DNO_LCHMOD -DNO_LCHOWN"
.else
MAKE_FLAGS+=	LOC="${CFLAGS} -DUSE_UNSHRINK -DNO_LCHMOD -DNO_LCHOWN"
.endif

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
