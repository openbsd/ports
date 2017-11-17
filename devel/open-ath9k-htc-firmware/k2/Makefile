# $OpenBSD: Makefile,v 1.2 2017/11/17 23:50:44 bentley Exp $

COMMENT =		free firmware for Atheros AR9271

ATH9K_FIRMWARE =	k2
REVISION =		0

CONFIGURE_ARGS +=	-DTARGET_K2=On

post-install:
	cat ${WRKDIST}/LICENCE.TXT ${WRKDIST}/NOTICE.TXT > ${WRKDIST}/license
	${INSTALL_DATA} ${WRKDIST}/license \
		${PREFIX}/share/open-ath9k-htc-firmware

.include <bsd.port.mk>
