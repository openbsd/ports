# $OpenBSD: Makefile,v 1.3 1999/10/28 20:43:08 brad Exp $
# $FreeBSD: Makefile,v 1.15 1999/08/25 06:14:08 obrien Exp $

DISTNAME=	gqview-0.7.0.src
PKGNAME=	gqview-0.7.0
CATEGORIES=	graphics
MASTER_SITES=	http://gqview.netpedia.net/ \
		http://www.geocities.com/SiliconValley/Haven/5235/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gdk_imlib.19:${PORTSDIR}/graphics/imlib

USE_X11=	yes

ALL_TARGET=	gqview
WRKSRC=		${WRKDIR}/${PKGNAME}

post-install:
	@${MKDIR} ${PREFIX}/share/doc/gqview
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gqview/README

.include <bsd.port.mk>
