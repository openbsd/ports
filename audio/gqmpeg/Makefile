# $OpenBSD: Makefile,v 1.12 2000/07/28 23:36:00 jakob Exp $
# Original from: Bruno Rohée

DISTNAME=	gqmpeg-0.6.3.src
PKGNAME=	gqmpeg-0.6.3
CATEGORIES=     audio
NEED_VERSION=	1.230
MASTER_SITES=	http://www.netpedia.net/hosting/gqview/packages/

HOMEPAGE=	http://www.netpedia.net/hosting/gqview/mpeg-index.html

MAINTAINER=	rohee@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	glib.1.2::devel/glib \
		gtk.1.2::x11/gtk+ \
		gdk_imlib.19::graphics/imlib
BUILD_DEPENDS=	mpg123::audio/mpg123
RUN_DEPENDS=	mpg123::audio/mpg123

ALL_TARGET=	gqmpeg
WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	COPYING FAQ README SKIN-SPECS ChangeLog

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg
	${INSTALL_PROGRAM} ${WRKSRC}/gqmpeg ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugin/gqmpeg-shoutcast-plugin.sh ${PREFIX}/bin
.for f in ${DOCS}
	${INSTALL_DATA}	${WRKSRC}/${f} ${PREFIX}/share/doc/gqmpeg
.endfor

.include <bsd.port.mk>
