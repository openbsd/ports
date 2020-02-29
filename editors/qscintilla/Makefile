# $OpenBSD: Makefile,v 1.26 2020/02/29 08:17:59 rsadowski Exp $

COMMENT =	Qt port of the Scintilla source code editor

# XXX update py-qscintilla alongside this port (same distfile).
VERSION =	2.11.4
DISTNAME =	QScintilla-${VERSION}
PKGNAME =	${DISTNAME:L}
REVISION =	0

CATEGORIES =	editors x11

SHARED_LIBS +=  qscintilla2_qt5          1.0 # 15.0

HOMEPAGE =	https://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets m

MASTER_SITES =  https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

MODULES =	devel/qmake \
		x11/qt5

SEPARATE_BUILD =	No

CONFIGURE_ENV =	HOME=${WRKDIR}

WRKSRC =	${WRKDIST}/Qt4Qt5

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

.include <bsd.port.mk>
