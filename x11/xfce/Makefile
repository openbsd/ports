# New ports collection makefile for:	xfce
# Version required:	3.2.5
# Date created:		28 Jan 2000
# Whom:			Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.11 2000/11/30 05:28:42 kevlo Exp $
#

DISTNAME=	xfce-3.6.3
CATEGORIES=	x11
NEED_VERSION=	1.340
MASTER_SITES=	http://www.xfce.org/archive/

HOMEPAGE=	http://www.xfce.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Imlib.19::graphics/imlib \
		gtk.1::x11/gtk+
RUN_DEPENDS=	${LOCALBASE}/bin/sox::audio/sox

USE_X11=	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--with-xpm=${X11BASE} \
		--with-conf-dir=${PREFIX}/lib/xfce	

.include <bsd.port.mk>
