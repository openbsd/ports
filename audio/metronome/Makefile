# $OpenBSD: Makefile,v 1.9 2019/07/12 21:15:34 sthen Exp $

COMMENT = 	simple metronome
CATEGORIES =	audio
DISTNAME = 	metronome-2
MAINTAINER = 	Marc Espie <espie@openbsd.org>
MASTER_SITES = 	https://distfiles.nl/

# OpenBSD licence
PERMIT_PACKAGE =	Yes

FAKE_FLAGS = 	BINDIR=${TRUEPREFIX}/bin MANDIR=${TRUEPREFIX}/man/man
WANTLIB += 	c m sndio

NO_TEST =	Yes

.include <bsd.port.mk>
