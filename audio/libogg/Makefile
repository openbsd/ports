# $OpenBSD: Makefile,v 1.4 2001/06/30 13:18:06 naddy Exp $

COMMENT=	"Ogg bitstream library"
DISTNAME=	libogg-1.0rc1
CATEGORIES=    	audio
NEED_VERSION=	1.363
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/rc1/unix/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
