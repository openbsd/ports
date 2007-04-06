# $OpenBSD: Makefile,v 1.6 2007/04/06 05:30:50 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for MP3 files"
DISTNAME=	xmms-mad-0.8	
CATEGORIES=	audio
HOMEPAGE=	http://xmms-mad.sourceforge.net/	

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmms-mad/}

LIB_DEPENDS=	xmms.>=4::audio/xmms mad.>=2::audio/libmad \
		id3tag.>=3::audio/libid3tag

WANTLIB=	X11 Xext Xi m gdk glib gmodule gtk iconv intl

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
