# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:24 espie Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		reset NT/W2K/XP/Vista/W7 password

V =			100627
REVISION =		2
DISTNAME =		chntpw-source-${V}
PKGNAME =		chntpw-${V}
EXTRACT_SUFX =		.zip
CATEGORIES =		security

HOMEPAGE =		http://pogostick.net/~pnh/ntpasswd/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# Mix of GPL and LGPL
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c

MASTER_SITES =		http://pogostick.net/~pnh/ntpasswd/

MAKE_ENV =		CC=$(CC)

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/chntpw-${V}/

PROGS =			chntpw chntpw.static cpnt reged reged.static
DOCDIR =		$(PREFIX)/share/doc/chntpw

do-install:
	cd $(WRKDIST); $(INSTALL_PROGRAM) $(PROGS) $(PREFIX)/bin
	$(INSTALL_DATA_DIR) $(DOCDIR)
	$(INSTALL_DATA) $(WRKDIST)/*.txt $(DOCDIR)

.include <bsd.port.mk>
