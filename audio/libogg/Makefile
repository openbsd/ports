# $OpenBSD: Makefile,v 1.1.1.1 2001/03/14 01:55:42 todd Exp $

DISTNAME=	libogg-1.0beta4
CATEGORIES=    	audio
NEED_VERSION=	1.359
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Todd Fries <todd@fries.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/beta4/unix/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
