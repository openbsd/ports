# $OpenBSD: Makefile,v 1.60 2017/03/23 17:26:17 bluhm Exp $

PORTROACH =	skipv:552

COMMENT =	extract, list & test files in a ZIP archive

VERSION =	6.0
DISTNAME =	unzip${VERSION:S/.//}
PKGNAME =	unzip-${VERSION}
REVISION =	10
CATEGORIES =	archivers
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=infozip/} \
		ftp://ftp.info-zip.org/pub/infozip/src/

HOMEPAGE =	http://www.info-zip.org/UnZip.html

FLAVORS =	iconv
FLAVOR ?=

# Conditional
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c

MAKE_FLAGS =	CC="${CC}" LD="${CC}" CF="${CFLAGS}" LOC="${LOC}"
FAKE_FLAGS =	prefix="${WRKINST}${PREFIX}"

MAKE_FILE =	unix/Makefile

ALL_TARGET =	bsd

DOCS =	COPYING.OLD LICENSE README WHERE

LOC =		-DLARGE_FILE_SUPPORT -DNO_LCHMOD -DUSE_UNSHRINK

.if ${FLAVOR:L:Miconv}
LIB_DEPENDS +=	converters/libiconv
WANTLIB +=	iconv
CFLAGS +=	-I${LOCALBASE}/include
LOC +=		-DUNICODE_SUPPORT -DUNICODE_WCHAR -DUTF8_MAYBE_NATIVE \
		-DNO_WORKING_ISPRINT
MAKE_FLAGS +=	LF2="-L${LOCALBASE}/lib -liconv"
PATCH_LIST =	patch-* iconv-*
.endif

CFLAGS +=	-I. ${LOC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unzip

do-test:
	cd ${WRKBUILD} && ./unzip -x -a -o testmake.zip
	cmp -s ${WRKBUILD}/notes ${FILESDIR}/notes

.include <bsd.port.mk>
