# $OpenBSD: Makefile,v 1.6 2000/02/12 08:02:21 turan Exp $
# $FreeBSD: Makefile,v 1.15 1999/08/25 06:14:08 obrien Exp $

DISTNAME=	gqview-0.7.0.src
PKGNAME=	gqview-0.7.0
CATEGORIES=	graphics
MASTER_SITES=	http://gqview.netpedia.net/ \
		http://www.geocities.com/SiliconValley/Haven/5235/
NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gdk_imlib.19:${PORTSDIR}/graphics/imlib

USE_X11=	yes

ALL_TARGET=	gqview
WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	@mkdir -p ${PREFIX}/share/doc/gqview
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gqview/README

.include <bsd.port.mk>
