# $OpenBSD: Makefile,v 1.4 2010/10/24 21:15:36 ajacoutot Exp $

COMMENT=	command-line program for managing X selection contents

DISTNAME=	xsel-1.2.0
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	concurrent
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
