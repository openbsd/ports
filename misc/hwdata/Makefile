COMMENT=		hardware identification and configuration data

GH_ACCOUNT=		vcrhonek
GH_PROJECT=		hwdata
GH_TAGNAME=		v0.384

CATEGORIES=		misc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		--prefix=${TRUEPREFIX} \
			--datarootdir=${TRUEPREFIX}/share \
			--sysconfdir=${SYSCONFDIR}

# modprobe blacklist; linux only
CONFIGURE_ARGS +=	--disable-blacklist

.include <bsd.port.mk>
