# $OpenBSD: Makefile,v 1.14 2004/09/30 19:39:56 naddy Exp $

COMMENT=	"audio compression codec library"

DISTNAME=	libvorbis-1.1.0
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

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
