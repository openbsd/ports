# $OpenBSD: Makefile,v 1.5 2001/08/20 21:53:56 naddy Exp $

COMMENT=	"Ogg bitstream library"
DISTNAME=	libogg-1.0rc2
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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
