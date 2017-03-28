# $OpenBSD: Makefile,v 1.1.1.1 2017/03/28 07:24:40 pirofti Exp $

COMMENT =		editor for the TikZ language

V =			0.10
DISTNAME =		ktikz_${V}
PKGNAME =		KtikZ-${V}

CATEGORIES =		editors
HOMEPAGE =		http://www.hackenberger.at/blog/ktikz-editor-for-the-tikz-language/
MAINTAINER =		Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.hackenberger.at/ktikz/

WANTLIB += ICE QtGui QtXml SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread stdc++ poppler-qt4

MODULES =		devel/qmake \
			x11/qt4
MODQMAKE_ARGS=          DESKTOPDIR=${LOCALBASE}/share/applications \
                        ICONDIR=${LOCALBASE}/share/pixmaps \
			MIMEDIR=${LOCALBASE}/share/mime/packages \
			MANDIR=${LOCALBASE}/man \
			LRELEASECOMMAND=${LOCALBASE}/bin/lrelease4 \
			QCOLLECTIONGENERATORCOMMAND=${LOCALBASE}/lib/qt4/bin/qcollectiongenerator

MAKE_ENV =		MAKEOBJDIR=.
WRKDIST =		${WRKDIR}/ktikz

MODQMAKE_PROJECTS =	qtikz.pro \
			app/app.pro

RUN_DEPENDS =		print/texlive/base \
			print/poppler,-utils \
			misc/shared-mime-info \
			devel/desktop-file-utils

# XXX: pkg_add poppler-qt4 because otherwise it pulls qt5 as well
LIB_DEPENDS =		print/poppler,,-qt4

NO_TEST =		Yes

.include <bsd.port.mk>
