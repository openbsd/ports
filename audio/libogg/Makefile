# $OpenBSD: Makefile,v 1.3 2001/03/25 22:04:08 naddy Exp $

COMMENT=	"Ogg bitstream library"
DISTNAME=	libogg-1.0beta4
CATEGORIES=    	audio
NEED_VERSION=	1.363
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/beta4/unix/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
