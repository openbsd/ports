# $OpenBSD: Makefile,v 1.13 2003/12/14 00:52:22 naddy Exp $

COMMENT=	"audio compression codec library"

DISTNAME=	libvorbis-1.0.1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/1.0.1/unix/

LIB_DEPENDS=	ogg.5::audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
