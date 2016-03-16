# $OpenBSD: Makefile.inc,v 1.3 2016/03/16 20:02:12 naddy Exp $

CATEGORIES ?=		net multimedia
HOMEPAGE ?=		https://01.org/dleyna/
MASTER_SITES ?=		https://01.org/sites/default/files/downloads/dleyna/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext
USE_GMAKE=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE ?=	gnu

CONFIGURE_SCRIPT=	${LOCALBASE}/bin/bash configure
BUILD_DEPENDS +=	shells/bash

# triggers on base system libs functions
pre-configure:
	perl -pi -e 's|CFLAGS\+=" -Wl,--no-undefined"||' \
		${WRKSRC}/configure
