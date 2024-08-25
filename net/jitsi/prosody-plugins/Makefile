COMMENT =	prosody modules for Jitsi Meet

CATEGORIES =	net

PKGNAME =	jitsi-prosody-plugins-2.0.9646

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-meet
GH_TAGNAME =	jitsi-meet_9646

MAINTAINER =	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <aisha@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	net/prosody


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jitsi-prosody-plugins/token
	cp -r ${WRKSRC}/resources/prosody-plugins/. \
		${PREFIX}/share/jitsi-prosody-plugins

.include <bsd.port.mk>
