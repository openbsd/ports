COMMENT =		free firmware for Atheros AR9271

ATH9K_FIRMWARE =	k2
REVISION =		0

CONFIGURE_ARGS +=	-DTARGET_K2=On

post-install:
	cat ${WRKDIST}/LICENCE.TXT ${WRKDIST}/NOTICE.TXT > ${WRKDIST}/license
	${INSTALL_DATA} ${WRKDIST}/license \
		${PREFIX}/share/open-ath9k-htc-firmware

.include <bsd.port.mk>
