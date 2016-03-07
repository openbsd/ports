# $OpenBSD: Makefile,v 1.31 2016/03/07 12:41:34 zhuk Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-4.5
CATEGORIES=		editors

HOMEPAGE=		http://www.xm1math.net/texmaker/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE QtGui QtNetwork QtScript QtWebKit QtXml SM X11
WANTLIB += Xext Xi Xinerama Xrender c fontconfig freetype hunspell-1.3
WANTLIB += m poppler-qt4 pthread stdc++ z

MODULES=		x11/qt4
CONFIGURE_STYLE=	qmake
MODQMAKE_ARGS=		DESKTOPDIR=${LOCALBASE}/share/applications \
			ICONDIR=${LOCALBASE}/share/pixmaps

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		textproc/hunspell \
			print/poppler,,-qt4

NO_TEST=		Yes

.include <bsd.port.mk>
