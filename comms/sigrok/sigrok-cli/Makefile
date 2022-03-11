COMMENT =		command-line frontend for sigrok logic analyzer

SIGROK_PROJECT =	sigrok-cli
SIGROK_VERSION =	0.7.2

WANTLIB += c glib-2.0 intl pthread sigrok sigrokdecode

LIB_DEPENDS =		comms/sigrok/libsigrok \
			comms/sigrok/libsigrokdecode \
			devel/glib2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
