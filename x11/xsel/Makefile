COMMENT=	command-line program for managing X selection contents

V=		1.2.0.20220310
DISTNAME=	xsel-${V}
CATEGORIES=	x11
HOMEPAGE=	http://www.vergenet.net/~conrad/software/xsel/

GH_ACCOUNT=	kfish
GH_PROJECT=	xsel
GH_COMMIT=	9fc4e3e4e3f1231cabfdc2e1438155f9390bc517

# BSD-style
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c

# releases normally at
#MASTER_SITES=  http://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=autoreconf
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.16

.include <bsd.port.mk>
