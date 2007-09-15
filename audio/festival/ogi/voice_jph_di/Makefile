# $OpenBSD: Makefile,v 1.2 2007/09/15 22:27:39 simon Exp $

LANG=	english
VO=	jph

COMMENT=	american male voice (JPH)
DISTNAME=	voice_${VO}_di-2.0

RUN_DEPENDS=	${OGI_US_DEPS}

do-install:
	${INSTALL_DATA_DIR} ${OGI_PRE}/festvox
	${INSTALL_DATA_DIR} ${OGI_PRE}/group
	${INSTALL_DATA} ${OGI_WRK}/festvox/*.{dat,msec,scm} ${OGI_PRE}/festvox
	${INSTALL_DATA} ${OGI_WRK}/group/*.group ${OGI_PRE}/group

.include <bsd.port.mk>
