# $OpenBSD: Makefile,v 1.1.1.1 2015/12/29 17:43:25 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		Delphi compatible IDE

V =			1.4.4
DISTNAME =		lazarus-${V}-0
PKGNAME =		lazarus-${V}

FPC_V =			3.0.0

CATEGORIES =		devel

HOMEPAGE =		http://lazarus.freepascal.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+ / LGPL / MPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lazarus/}

MODULES =		converters/libiconv
BUILD_DEPENDS =		lang/fpc>=${FPC_V}
RUN_DEPENDS =		lang/fpc>=${FPC_V} \
			x11/gtk+3,-guic \
			devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS =		x11/gtk+2

MAKE_ENV =		PPC_CONFIG_PATH="${WRKDIR}" MKDIRPROG=/bin/mkdir \
			ECHO=/bin/echo GINSTALL=/usr/bin/install \
			DATE=/bin/date TARPROG=/bin/tar \
			FPCDIR="${LOCALBASE}/lib/fpc/${FPC_V}"

.if ${MACHINE_ARCH} == "amd64"
CONFIG =                x86_64-openbsd
.else
CONFIG =                i386-openbsd
.endif

SUBST_VARS +=		CONFIG

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/lazarus

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/lazarus
	find ${PREFIX}/share/lazarus -type d -exec chmod ${DIRMODE} {} +
	find ${PREFIX}/share/lazarus -type f -exec chmod ${SHAREMODE} {} +
	cd ${PREFIX}/share/lazarus && \
		chown ${BINOWN}:${BINGRP} lazarus startlazarus lazbuild && \
		chmod ${BINMODE} lazarus startlazarus lazbuild
	find ${PREFIX} -name '*.orig' -exec rm -f {} +
	cd ${PREFIX}/share/lazarus/components/chmhelp/lhelp/lhelp.app/Contents/MacOS \
		&& ln -sf ../../../../lhelp .

.include <bsd.port.mk>
