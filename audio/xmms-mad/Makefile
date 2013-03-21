# $OpenBSD: Makefile,v 1.18 2013/03/21 08:45:13 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for MP3 files
DISTNAME=	xmms-mad-0.10
CATEGORIES=	audio
HOMEPAGE=	http://xmms-mad.sourceforge.net/
REVISION =	1

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi m gdk glib gmodule gtk
WANTLIB += xcb z id3tag xmms mad

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmms-mad/}

LIB_DEPENDS=	audio/xmms audio/libmad audio/libid3tag

MODULES=	devel/gettext

LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
