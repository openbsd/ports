# $OpenBSD: pmk.port.mk,v 1.3 2010/11/15 19:46:07 espie Exp $
# Pre Make Kit support
# public domain

BUILD_DEPENDS+=		devel/pmk
CONFIGURE_SCRIPT=	${LOCALBASE}/bin/pmk
CONFIGURE_ARGS=		BIN_CC=${CC}
MODPMK_configure=	${MODSIMPLE_configure}
