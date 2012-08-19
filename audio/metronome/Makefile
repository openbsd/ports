# $OpenBSD: Makefile,v 1.4 2012/08/19 09:55:19 espie Exp $

COMMENT = 	simple metronome
CATEGORIES =	audio
DISTNAME = 	metronome-1
MAINTAINER = 	Marc Espie <espie@openbsd.org>
MASTER_SITES = 	ftp://quatramaran.ens.fr/pub/espie/

# OpenBSD licence
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = 	Yes
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes

FAKE_FLAGS = 	BINDIR=${TRUEPREFIX}/bin MANDIR=${TRUEPREFIX}/man/man
WANTLIB += 	c m sndio

NO_REGRESS =	Yes

.include <bsd.port.mk>
