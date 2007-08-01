# $OpenBSD: Makefile,v 1.1.1.1 2007/08/01 05:13:44 steven Exp $

COMMENT=	command-line program for managing X selection contents

DISTNAME=	xsel-0.9.6
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext c

MASTER_SITES=	http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	concurrent
USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
