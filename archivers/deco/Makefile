# $OpenBSD: Makefile,v 1.15 2020/03/23 19:17:38 ajacoutot Exp $

COMMENT=	extract various archive file formats

V=		1.6.4
ARCHIVE_V=	1.7
PKGNAME=	deco-archive-${V}
REVISION=	0

CATEGORIES=	archivers

# GPLv3 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MASTER_SITES=	https://github.com/peha/
MASTER_SITES0=	https://github.com/peha/

DISTFILES=	deco-{deco/archive/}${V}${EXTRACT_SUFX} \
		deco-archive-{deco-archive/archive/}${ARCHIVE_V}${EXTRACT_SUFX}

DECO=		${WRKDIR}/deco-${V}
ARCHIVE=	${WRKDIR}/deco-archive-${ARCHIVE_V}

RUN_DEPENDS=	archivers/arc \
		archivers/bzip2 \
		archivers/cabextract \
		archivers/p7zip \
		archivers/lzop \
		archivers/rzip \
		archivers/unzip \
		archivers/zoo \
		audio/flac \
		converters/rpm2cpio

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -D_BSD_SOURCE"

NO_TEST=	Yes

do-build:
	cd ${DECO} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE}
	cd ${ARCHIVE} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/deco
	${INSTALL_PROGRAM} ${DECO}/deco ${PREFIX}/bin
.for i in LICENSE Makefile NEWS README.md config.mk
	rm ${ARCHIVE}/${i}
.endfor
	cd ${ARCHIVE} && cp -R * ${PREFIX}/share/deco

.include <bsd.port.mk>
