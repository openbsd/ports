# $OpenBSD: Makefile,v 1.8 2002/12/14 08:42:33 brad Exp $

COMMENT=	"small, fast & useable window manager"

DISTNAME=	openbox-2.2.2
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/releases/

HOMEPAGE=	http://icculus.org/openbox/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-xinerama

NO_REGRESS=	Yes

.include <bsd.port.mk>
