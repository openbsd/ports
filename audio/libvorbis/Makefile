# $OpenBSD: Makefile,v 1.15 2004/11/21 17:51:45 espie Exp $

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
WANTLIB=		m

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

LIB_DEPENDS=	ogg.5::audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
