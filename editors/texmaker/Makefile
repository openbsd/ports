# $OpenBSD: Makefile,v 1.34 2017/04/12 18:12:33 landry Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-4.5
CATEGORIES=		editors
REVISION=		0

HOMEPAGE=		http://www.xm1math.net/texmaker/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE QtGui QtNetwork QtScript QtWebKit QtXml SM X11
WANTLIB += Xext Xi Xinerama Xrender c fontconfig freetype hunspell-1.6
WANTLIB += m poppler-qt4 pthread ${LIBCXX} z

MODULES=		devel/qmake x11/qt4
MODQMAKE_ARGS=		DESKTOPDIR=${LOCALBASE}/share/applications \
			ICONDIR=${LOCALBASE}/share/pixmaps

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		textproc/hunspell \
			print/poppler,,-qt4

NO_TEST=		Yes

.include <bsd.port.mk>
