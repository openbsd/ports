# $OpenBSD: Makefile,v 1.10 2015/06/19 16:24:06 jca Exp $

COMMENT=	command-line program for managing X selection contents

DISTNAME=	xsel-1.2.0
REVISION=	2
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
