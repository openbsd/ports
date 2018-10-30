# $OpenBSD: Makefile,v 1.2 2018/10/30 08:25:43 bentley Exp $

COMMENT =		command-line frontend for sigrok logic analyzer

SIGROK_PROJECT =	sigrok-cli
SIGROK_VERSION =	0.7.1

WANTLIB += c glib-2.0 intl sigrok sigrokdecode

LIB_DEPENDS =		comms/sigrok/libsigrok \
			comms/sigrok/libsigrokdecode \
			devel/glib2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

.include <bsd.port.mk>
