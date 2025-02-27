V ?=			43

DISTNAME ?=		ngspice-${V}

CATEGORIES ?=		cad

HOMEPAGE ?=		https://ngspice.sourceforge.net/

# BSD
PERMIT_PACKAGE ?=	Yes

SITES ?=		${SITE_SOURCEFORGE:=ngspice/}

USE_GMAKE ?=		yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

TAR =			${LOCALBASE}/bin/gtar

BUILD_DEPENDS +=	archivers/gtar

CONFIGURE_ARGS +=	--enable-cider \
			--enable-xspice \
			--with-readline=yes

CONFIGURE_ARGS +=	--disable-openmp
