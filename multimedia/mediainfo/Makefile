# $OpenBSD: Makefile,v 1.11 2017/07/26 22:45:27 sthen Exp $

COMMENT=	display technical and tag data for video and audio files

VERSION=	0.7.90
PKGNAME=	mediainfo-${VERSION}
CATEGORIES=	multimedia
HOMEPAGE=	https://mediaarea.net/en/MediaInfo
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX} z

MASTER_SITES=	https://mediaarea.net/download/binary/mediainfo/${VERSION}/
DISTFILES=	MediaInfo_CLI_${VERSION}_GNU_FromSource.tar.xz

WRKDIST=	${WRKDIR}/MediaInfo_CLI_GNU_FromSource

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	SUBDIRS="${SUBDIRS}"
MAKE_ENV=	SUBDIRS="${SUBDIRS}"
LIBTOOL_FLAGS=	--tag=disable-shared
MODGNU_CONFIG_GUESS_DIRS=${SUBDIRS}

ZENLIBDIR=	${WRKSRC}/ZenLib/Project/GNU/Library
MEDIAINFOLIBDIR=${WRKSRC}/MediaInfoLib/Project/GNU/Library
MEDIAINFODIR=	${WRKSRC}/MediaInfo/Project/GNU/CLI

SUBDIRS=	${ZENLIBDIR} ${MEDIAINFOLIBDIR} ${MEDIAINFODIR}

NO_TEST=	Yes

# fix line endings for files that are patched
#pre-patch:
#	@sed -i "s/$$(printf \\r)\$$//" \
#	    ${WRKSRC}/MediaInfoLib/Source/MediaInfo/MediaInfo_Internal.cpp

pre-configure:
	@cp ${FILESDIR}/configure ${FILESDIR}/Makefile ${WRKSRC}
	@chmod a+x ${WRKSRC}/configure

do-install:
	@cd ${MEDIAINFODIR} && ${LIBTOOL} ${LIBTOOL_FLAGS} --mode=install \
	    ${INSTALL_PROGRAM} mediainfo ${PREFIX}/bin

.include <bsd.port.mk>
