# $OpenBSD: Makefile,v 1.5 2001/08/20 21:53:56 naddy Exp $

COMMENT=	"audio compression codec library"
DISTNAME=	libvorbis-1.0rc2
CATEGORIES=    	audio
NEED_VERSION=	1.435
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/rc2/unix/

LIB_DEPENDS=	ogg.2::audio/libogg

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--with-ogg-prefix=${LOCALBASE}

.include <bsd.port.mk>
