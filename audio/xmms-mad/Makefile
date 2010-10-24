# $OpenBSD: Makefile,v 1.12 2010/10/24 21:00:30 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for MP3 files
DISTNAME=	xmms-mad-0.10
CATEGORIES=	audio
HOMEPAGE=	http://xmms-mad.sourceforge.net/	

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xi m gdk glib gmodule gtk pthread-stubs
WANTLIB += xcb z id3tag xmms mad

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmms-mad/}

LIB_DEPENDS=	::audio/xmms ::audio/libmad \
		::audio/libid3tag

MODULES=	devel/gettext

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
