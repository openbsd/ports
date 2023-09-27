COMMENT=	command-line program for managing X selection contents

GH_ACCOUNT=	kfish
GH_PROJECT=	xsel
GH_TAGNAME=	1.2.1
CATEGORIES=	x11

HOMEPAGE=	https://www.vergenet.net/~conrad/software/xsel/

# BSD-style
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c

# releases used to be at but currently only on github
#SITES=  	https://www.vergenet.net/~conrad/software/xsel/download/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=autoreconf
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib"

AUTOCONF_VERSION=2.71
AUTOMAKE_VERSION=1.16

.include <bsd.port.mk>
