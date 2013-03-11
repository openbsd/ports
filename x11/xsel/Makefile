# $OpenBSD: Makefile,v 1.6 2013/03/11 11:46:19 espie Exp $

COMMENT=	command-line program for managing X selection contents

DISTNAME=	xsel-1.2.0
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
