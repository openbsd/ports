COMMENT =		Dynamic DNS client for Yandex Cloud
DIST_TUPLE =		codeberg	kn	yc-dyndns	0.3.1	.
CATEGORIES =		net

MAINTAINER =		Klemens Nanni <kn@opensd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

# uses pledge() and unveil()
RUN_DEPENDS =		devel/py-openbsd \
			net/py-yandexcloud \
			sysutils/py-psutil

NO_BUILD =		Yes

WRKDIST =		${WRKDIR}/${PKGSTEM}

PROG =			yc-dyndns
SUBST_VARS =		MODPY_SITEPKG

do-install:
	${SUBST_PROGRAM}  ${WRKSRC}/${PROG}   ${PREFIX}/bin/${PROG}
	${INSTALL_MAN}    ${WRKSRC}/${PROG}.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
