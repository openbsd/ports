# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:30 sthen Exp $

COMMENT=	command-line program for managing X selection contents

DISTNAME=	xsel-1.2.0
REVISION=	2
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

# BSD-style
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
