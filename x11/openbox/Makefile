# $OpenBSD: Makefile,v 1.12 2003/04/19 19:12:41 brad Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-2.2.3
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/releases/

HOMEPAGE=	http://icculus.org/openbox/

MAINTAINER=	Brad Smith <brad@openbsd.org>

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# gcc3
MODULES+=		gcc3 
MODGCC3_ARCHES=		sparc64
MODGCC3_LANGS+=		c++

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-xinerama
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

NO_REGRESS=	Yes

.include <bsd.port.mk>
