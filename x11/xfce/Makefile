# New ports collection makefile for:	xfce
# Version required:	3.2.5
# Date created:		28 Jan 2000
# Whom:			Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/28 14:21:19 kevlo Exp $
#

DISTNAME=	xfce-3.2.5
CATEGORIES=	x11
MASTER_SITES=	http://www.xfce.org/archive/

MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	Imlib.19:${PORTSDIR}/graphics/imlib \
		gtk.1:${PORTSDIR}/x11/gtk+
RUN_DEPENDS=	${LOCALBASE}/bin/sox:${PORTSDIR}/audio/sox

GTK_CONFIG=	${X11BASE}/bin/gtk-config

USE_X11=  	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		GTK_CONFIG="${GTK_CONFIG}" \
		LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${X11BASE} \
                --localstatedir=${PREFIX}/share \
		--datadir=${PREFIX}/share \
		--with-xpm=${X11BASE}

.include <bsd.port.mk>
