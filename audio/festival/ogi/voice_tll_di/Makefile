# $OpenBSD: Makefile,v 1.1.1.1 2004/07/11 06:21:51 jolan Exp $

LANG=	english
VO=	tll

COMMENT=	"american female voice (TLL)"
DISTNAME=	voice_${VO}_di-2.0

RUN_DEPENDS=	${OGI_US_DEPS}

do-install:
	${INSTALL_DATA_DIR} ${OGI_PRE}/festvox
	${INSTALL_DATA_DIR} ${OGI_PRE}/group
	${INSTALL_DATA} ${OGI_WRK}/festvox/*.{dat,msec,scm} ${OGI_PRE}/festvox
	${INSTALL_DATA} ${OGI_WRK}/group/*.group ${OGI_PRE}/group

.include <bsd.port.mk>
