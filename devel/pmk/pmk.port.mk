# $OpenBSD: pmk.port.mk,v 1.2 2005/01/02 23:55:10 couderc Exp $
# Pre Make Kit support
# public domain

BUILD_DEPENDS+=		::devel/pmk
CONFIGURE_SCRIPT=	${LOCALBASE}/bin/pmk
CONFIGURE_ARGS=		BIN_CC=${CC}
MODPMK_configure=	${MODSIMPLE_configure}
