# $OpenBSD: pmk.port.mk,v 1.1 2005/01/02 18:48:43 couderc Exp $
# Pre Make Kit support
# public domain

.if ${CONFIGURE_STYLE:L:Mpmk}
BUILD_DEPENDS+=		::devel/pmk
CONFIGURE_SCRIPT=	pmk


MODPMK_configure= cd ${WRKSRC} && \
			${_SYSTRACE_CMD} ${SETENV} ${CONFIGURE_SCRIPT}
.endif

