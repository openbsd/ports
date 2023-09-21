COMMENT =	Qt port of the Scintilla source code editor

# XXX update py-qscintilla alongside this port (same distfile).
VERSION =	2.14.1
DISTNAME =	QScintilla_src-${VERSION}
PKGNAME =	qscintilla-${VERSION}

CATEGORIES =	editors x11

SHARED_LIBS +=  qscintilla2_qt5          2.0 # 15.0

HOMEPAGE =	https://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets m

SITES =		https://www.riverbankcomputing.com/static/Downloads/QScintilla/${VERSION}/

MODULES =	devel/qmake \
		x11/qt5

SEPARATE_BUILD =	No

CONFIGURE_ENV =	HOME=${WRKDIR}

WRKSRC =	${WRKDIST}/src

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

.include <bsd.port.arch.mk>

.if ! ${PROPERTIES:Mlp64}
# ports depending on this fail, e.g. py-qscintilla, octave, openscad
# due to undefined symbols.
# if fixing this removes the symbols, remember the shlib major bump
BROKEN+=	undefined symbols in produced library on 32-bit archs, needs fixing
.endif

.include <bsd.port.mk>
