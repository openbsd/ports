# $OpenBSD: Makefile,v 1.16 2001/03/06 21:04:54 rohee Exp $
# Original from: Bruno Rohée

DISTNAME=	gqmpeg-0.6.3.src
PKGNAME=	gqmpeg-0.6.3
CATEGORIES=     audio
NEED_VERSION=	1.336
MASTER_SITES=	http://www.netpedia.net/hosting/gqview/packages/

LIB_DEPENDS=	gdk_imlib.19::graphics/imlib
BUILD_DEPENDS=	mpg123::audio/mpg123
RUN_DEPENDS=	mpg123::audio/mpg123

HOMEPAGE=	http://gqmpeg.sourceforge.net

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	PREFIX="${PREFIX}" CC="${CC}" \
		CFLAGS='${CFLAGS} -Wall $$(GTK_INCLUDE) $$(IMLIB_INCLUDE)'

ALL_TARGET=	gqmpeg

WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	COPYING ChangeLog FAQ README SKIN-SPECS

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg
	${INSTALL_PROGRAM} ${WRKSRC}/gqmpeg ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugin/gqmpeg-shoutcast-plugin.sh ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqmpeg

.include <bsd.port.mk>
