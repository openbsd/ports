# New ports collection makefile for:	xfce
# Version required:	3.2.5
# Date created:		28 Jan 2000
# Whom:			Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:59 espie Exp $
#

DISTNAME=	xfce-3.4.4
CATEGORIES=	x11
NEED_VERSION=	1.301
MASTER_SITES=	http://www.xfce.org/archive/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Imlib.19::graphics/imlib \
		gtk.1::x11/gtk+
RUN_DEPENDS=	${LOCALBASE}/bin/esdplay::audio/esound

GTK_CONFIG=	${LOCALBASE}/bin/gtk-config

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		GTK_CONFIG="${GTK_CONFIG}" \
		LIBS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=--with-xpm=${X11BASE}

.include <bsd.port.mk>
