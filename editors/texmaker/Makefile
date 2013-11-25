# $OpenBSD: Makefile,v 1.26 2013/11/25 14:16:22 sthen Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-4.1
CATEGORIES=		editors

HOMEPAGE=		http://www.xm1math.net/texmaker/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE QtGui QtNetwork QtWebKit QtXml SM X11 Xext Xi Xinerama
WANTLIB += Xrender c fontconfig freetype hunspell-1.3 m poppler-qt4
WANTLIB += pthread stdc++ z

MODULES=		x11/qt4

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		textproc/hunspell \
			print/poppler,,-qt4

NO_TEST=		Yes

FAKE_FLAGS=		INSTALL_ROOT=${WRKINST}

do-configure:
	@cd ${WRKSRC} && \
	qmake4  -spec ${MODQT_LIBDIR}/mkspecs/openbsd-g++ \
		PREFIX=${LOCALBASE} \
		DESKTOPDIR=${LOCALBASE}/share/applications \
		ICONDIR=${LOCALBASE}/share/pixmaps \
		texmaker.pro

.include <bsd.port.mk>
