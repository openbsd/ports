# New ports collection makefile for:	xfce
# Version required:	3.2.5
# Date created:		28 Jan 2000
# Whom:			Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.2 2000/03/05 18:30:48 espie Exp $
#

DISTNAME=	xfce-3.2.5
CATEGORIES=	x11
NEED_VERSION=	1.223
MASTER_SITES=	http://www.xfce.org/archive/

MAINTAINER=	kevlo@openbsd.org

LIB_DEPENDS=	Imlib.19:graphics/imlib \
		gtk.1:x11/gtk+
RUN_DEPENDS=	${LOCALBASE}/bin/sox:audio/sox

GTK_CONFIG=	${X11BASE}/bin/gtk-config

USE_X11=  	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		GTK_CONFIG="${GTK_CONFIG}" \
		LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--prefix=${X11BASE} \
                --localstatedir=${PREFIX}/share \
		--datadir=${PREFIX}/share \
		--with-xpm=${X11BASE}

.include <bsd.port.mk>
