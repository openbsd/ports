# $OpenBSD: Makefile,v 1.9 2000/03/24 23:28:02 espie Exp $
# Original from: Bruno Rohée

DISTNAME=	gqmpeg-0.6.3.src
PKGNAME=	gqmpeg-0.6.3
CATEGORIES=     audio
NEED_VERSION=	 1.230
MASTER_SITES=	http://gqview.netpedia.net/

HOMEPAGE=	http://gqview.netpedia.net/mpeg-over.html

MAINTAINER=	rohee@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=	glib.1.2::devel/glib \
		gtk.1.2::x11/gtk+ \
		gdk_imlib.19::graphics/imlib
BUILD_DEPENDS=	mpg123::audio/mpg123
RUN_DEPENDS=	mpg123::audio/mpg123

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
