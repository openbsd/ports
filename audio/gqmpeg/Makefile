# $OpenBSD: Makefile,v 1.7 2000/02/15 05:03:56 turan Exp $
# Original from: Bruno Rohée

DISTNAME=	gqmpeg-0.6.3.src
PKGNAME=	gqmpeg-0.6.3
CATEGORIES=     audio
MASTER_SITES=	http://gqview.netpedia.net/
NEED_VERSION=	1.191

HOMEPAGE=	http://gqview.netpedia.net/mpeg-over.html

MAINTAINER=	rohee@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gdk_imlib.19:${PORTSDIR}/graphics/imlib
BUILD_DEPENDS=	mpg123:${PORTSDIR}/audio/mpg123
RUN_DEPENDS=	mpg123:${PORTSDIR}/audio/mpg123

NO_CONFIGURE=	yes

ALL_TARGET=	gqmpeg
WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	COPYING FAQ README SKIN-SPECS ChangeLog

do-install:
	@mkdir -p ${PREFIX}/share/doc/gqmpeg
	${INSTALL_PROGRAM} ${WRKSRC}/gqmpeg ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugin/gqmpeg-shoutcast-plugin.sh ${PREFIX}/bin
.for f in ${DOCS}
	${INSTALL_DATA}	${WRKSRC}/${f} ${PREFIX}/share/doc/gqmpeg
.endfor

.include <bsd.port.mk>
