# $OpenBSD: Makefile,v 1.13 2020/04/06 00:04:31 pirofti Exp $

COMMENT =		editor for the TikZ language

GH_ACCOUNT =		fhackenberger
GH_PROJECT =		ktikz
GH_TAGNAME =		0.12
PKGNAME =		KtikZ-${GH_TAGNAME}
REVISION =		0

CATEGORIES =		editors
HOMEPAGE =		http://www.hackenberger.at/blog/ktikz-editor-for-the-tikz-language/
MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets c m poppler-qt5

MODULES =		x11/qt5 \
			devel/qmake

MODQMAKE_ARGS=		DESKTOP_INSTALL_DIR=${LOCALBASE}/share/applications \
			MIME_INSTALL_DIR=${LOCALBASE}/share/mime/packages \
			MAN_INSTALL_DIR=${LOCALBASE}/man \
			LRELEASECOMMAND=${LOCALBASE}/bin/lrelease-qt5 \
			QCOLLECTIONGENERATORCOMMAND=${LOCALBASE}/lib/qt5/bin/qcollectiongenerator

# c++-11 reqwuired for poppler
COMPILER=		base-clang ports-gcc

MAKE_ENV =		MAKEOBJDIR=.

MODQMAKE_PROJECTS =	qtikz.pro

RUN_DEPENDS =		print/texlive/base \
			print/poppler,-utils \
			misc/shared-mime-info \
			devel/desktop-file-utils

LIB_DEPENDS =		print/poppler,-qt5

NO_TEST =		Yes

.include <bsd.port.mk>
