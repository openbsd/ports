# $OpenBSD: Makefile,v 1.17 2005/07/02 19:38:45 naddy Exp $

COMMENT=	"audio compression codec library"

DISTNAME=	libvorbis-1.1.1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

LIB_DEPENDS=	ogg.5::audio/libogg
WANTLIB=	m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
