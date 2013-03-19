# $OpenBSD: Makefile,v 1.6 2013/03/19 02:57:16 espie Exp $

COMMENT = 	simple metronome
CATEGORIES =	audio
DISTNAME = 	metronome-2
MAINTAINER = 	Marc Espie <espie@openbsd.org>
MASTER_SITES = 	ftp://quatramaran.ens.fr/pub/espie/

# OpenBSD licence
PERMIT_PACKAGE_CDROM = 	Yes

FAKE_FLAGS = 	BINDIR=${TRUEPREFIX}/bin MANDIR=${TRUEPREFIX}/man/man
WANTLIB += 	c m sndio

NO_TEST =	Yes

.include <bsd.port.mk>
