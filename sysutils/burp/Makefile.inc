# $OpenBSD: Makefile.inc,v 1.2 2019/07/12 20:49:40 sthen Exp $

COMMENT =	BackUp and Restore Program
DISTNAME =	burp-${VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	http://burp.grke.org/

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB ?=	b2 c crypto m curses rsync ssl z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=burp/}

EXTRACT_SUFX = .tar.bz2

CONFIGURE_STYLE =	gnu
INSTALL_TARGET =	install-all

# check is used for tests but detected at configure time
BUILD_DEPENDS =	devel/check \
		devel/uthash
LIB_DEPENDS =	net/librsync
RUN_DEPENDS =	shells/bash
SYSCONFDIR =	${BASESYSCONFDIR}/burp
CONFIGURE_ENV =	runstatedir=${LOCALSTATEDIR}/run/burp

# configs are subst'ed in fake; use mv, don't override sysconfdir in FAKE_FLAGS
post-install:
	rm -Rf ${WRKINST}${SYSCONFDIR}/autoupgrade
	mv ${WRKINST}${SYSCONFDIR} ${PREFIX}/share/examples/
