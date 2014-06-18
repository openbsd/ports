# $OpenBSD: Makefile,v 1.8 2014/06/18 20:49:15 matthew Exp $

COMMENT=	command-line program for managing X selection contents

DISTNAME=	xsel-1.2.0
REVISION=	0
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
