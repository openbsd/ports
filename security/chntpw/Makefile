# $OpenBSD: Makefile,v 1.2 2010/11/06 17:47:11 merdely Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		reset NT/W2K/XP/Vista/W7 password

V =			100627
REVISION =		0
DISTNAME =		chntpw-source-${V}
PKGNAME =		chntpw-${V}
EXTRACT_SUFX =		.zip
CATEGORIES =		security

HOMEPAGE =		http://pogostick.net/~pnh/ntpasswd/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# Mix of GPL and LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c ssl

MASTER_SITES =		http://pogostick.net/~pnh/ntpasswd/

MAKE_ENV =		CC=$(CC)

USE_GMAKE =		Yes

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}

PROGS =			chntpw chntpw.static cpnt reged reged.static
DOCDIR =		$(PREFIX)/share/doc/chntpw

do-install:
	cd $(WRKDIST); $(INSTALL_PROGRAM) $(PROGS) $(PREFIX)/bin
	$(INSTALL_DATA_DIR) $(DOCDIR)
	$(INSTALL_DATA) $(WRKDIST)/*.txt $(DOCDIR)

.include <bsd.port.mk>
