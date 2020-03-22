# $OpenBSD: Makefile,v 1.32 2020/03/22 14:39:14 sthen Exp $

COMMENT-main =		KDE graphics, styles and screensavers
COMMENT-emoticons =	KDE emoticons
COMMENT-mono =		one-colour KDE icon theme
COMMENT-nuvola =	KDE icon theme
DISTNAME =		kdeartwork-${MODKDE4_VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-emoticons =	kde-emoticons-${MODKDE4_VERSION}
PKGNAME-mono =		mono-icon-theme-${MODKDE4_VERSION}
PKGNAME-nuvola =	nuvola-icon-theme-${MODKDE4_VERSION}
PKG_ARCH-emoticons =	*
PKG_ARCH-mono =		*
PKG_ARCH-nuvola =	*
REVISION-emoticons =	2
REVISION-main =		3
REVISION-mono =		6
REVISION-nuvola =	4

PKGSPEC-main =		kdeartwork-${MODKDE4_SPEC}

MODKDE4_USE =		workspace

WANTLIB-emoticons =
WANTLIB-mono =
WANTLIB-nuvola =
WANTLIB-main =  ${WANTLIB} c m pthread
WANTLIB-main += ${COMPILER_LIBCXX}
WANTLIB-main += GL GLU ICE SM X11 Xext Xt
WANTLIB-main += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB-main += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kdecorations ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB-main += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/kscreensaver
WANTLIB-main += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-main += soprano

MULTI_PACKAGES =	-main -mono -nuvola -emoticons

KDE3_MONO_DISTNAME =	kdeaccessibility-3.5.10
MASTER_SITES0 =		${MASTER_SITE_KDE:S@$@Attic/3.5.10/src/@}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${KDE3_MONO_DISTNAME}.tar.bz2:0

BUILD_DEPENDS =		math/eigen3 \
			x11/xscreensaver

RUN_DEPENDS-emoticons =
RUN_DEPENDS-mono =	x11/gtk+3,-guic
RUN_DEPENDS-nuvola =	x11/gtk+3,-guic
RUN_DEPENDS-main =	x11/xscreensaver

LIB_DEPENDS-emoticons =
LIB_DEPENDS-mono =
LIB_DEPENDS-nuvola =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION}

post-extract:
	@cd ${WRKDIR}/${KDE3_MONO_DISTNAME}/IconThemes/mono; \
	find . -type f | while read f; do \
		if [ ! -e ${WRKSRC}/IconThemes/mono/$$f ]; then \
			mkdir -p $$(dirname ${WRKSRC}/IconThemes/mono/$$f); \
			echo cp $$PWD/$$f ${WRKSRC}/IconThemes/mono/$$f; \
			cp $$f ${WRKSRC}/IconThemes/mono/$$f; \
		fi; \
	done

.include <bsd.port.mk>
