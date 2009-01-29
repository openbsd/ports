# $OpenBSD: Makefile,v 1.2 2009/01/29 10:28:06 kevlo Exp $

COMMENT=	extract various archive file formats

V=		1.6
ARCHIVE_V=	1.4
DISTNAME=	deco-${V}
PKGNAME=	deco-archive-${V}p0

CATEGORIES=	archivers

HOMEPAGE= 	http://hartlich.com/deco/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}/download/
MASTER_SITES0=	${HOMEPAGE}/archive/download/

ARCHIVE_DISTFILE=	deco-archive-${ARCHIVE_V}${EXTRACT_SUFX}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${ARCHIVE_DISTFILE}:0

DECO=		${WRKDIR}/${DISTNAME}
ARCHIVE=	${WRKDIR}/deco-archive-${ARCHIVE_V}

RUN_DEPENDS=	::archivers/arc \
		::archivers/bzip2 \
		::archivers/cabextract \
		::archivers/p7zip \
		::archivers/lzop \
		::archivers/rzip \
		::archivers/unzip \
		::archivers/zoo \
		::audio/flac \
		::misc/rpm

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -D_BSD_SOURCE"

do-build:
	cd ${DECO} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE}
	cd ${ARCHIVE} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/deco
	${INSTALL_PROGRAM} ${DECO}/deco ${PREFIX}/bin
.for i in CREDITS LICENSE Makefile NEWS README config.mk
	rm -f ${ARCHIVE}/${i}
.endfor
	cd ${ARCHIVE} && cp -R * ${PREFIX}/share/deco

.include <bsd.port.mk>
