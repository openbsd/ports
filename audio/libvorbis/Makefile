# $OpenBSD: Makefile,v 1.3 2001/03/25 22:04:10 naddy Exp $

COMMENT=	"audio compression codec library"
DISTNAME=	libvorbis-1.0beta4
CATEGORIES=    	audio
NEED_VERSION=	1.363
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/beta4/unix/

LIB_DEPENDS=	ogg.1::audio/libogg

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--with-ogg-prefix=${LOCALBASE}

.include <bsd.port.mk>
