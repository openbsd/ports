# $OpenBSD: Makefile,v 1.3 2006/08/01 16:20:46 espie Exp $

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

BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	xmms.>=4::audio/xmms mad.>=2::audio/libmad \
		id3tag.>=3::audio/libid3tag

WANTLIB=	X11 Xext Xi m gdk glib gmodule gtk iconv intl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
