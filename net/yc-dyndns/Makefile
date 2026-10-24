COMMENT =		Dynamic DNS client for Yandex Cloud
DIST_TUPLE =		codeberg	kn	yc-dyndns	0.5	.
CATEGORIES =		net

MAINTAINER =		Klemens Nanni <kn@opensd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

# uses pledge() and unveil()
RUN_DEPENDS =		devel/py-openbsd \
			net/py-yandexcloud \
			sysutils/py-psutil \
			textproc/jq

NO_BUILD =		Yes

WRKDIST =		${WRKDIR}/${PKGSTEM}

PROG =			yc-dyndns
USER =			_dyndns
SUBST_VARS =		MODPY_SITEPKG \
			USER

HOOKS_PATH =		libexec/${PKGSTEM}/certbot-hooks
HOOKS_DIR =		${PREFIX}/${HOOKS_PATH}
SUBST_VARS =		HOOKS_PATH

do-install:
	${SUBST_PROGRAM}  ${WRKSRC}/${PROG}   ${PREFIX}/bin/${PROG}
	${INSTALL_MAN}    ${WRKSRC}/${PROG}.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${HOOKS_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/certbot-hooks/* ${HOOKS_DIR}/

.include <bsd.port.mk>
