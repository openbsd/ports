# $OpenBSD: Makefile,v 1.20 2013/01/08 15:43:54 shadchin Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-3.5.2
CATEGORIES=		editors

HOMEPAGE=		http://www.xm1math.net/texmaker/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE QtGui QtNetwork QtWebKit QtXml SM X11 Xext Xi Xinerama
WANTLIB += Xrender c fontconfig freetype hunspell-1.2 m poppler-qt4
WANTLIB += pthread stdc++ z

MODULES=		x11/qt4

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		textproc/hunspell \
			print/poppler,,-qt4

NO_REGRESS=		Yes
VMEM_WARNING=		Yes

FAKE_FLAGS=		INSTALL_ROOT=${WRKINST}

do-configure:
	@cd ${WRKSRC} && \
	qmake4  -spec ${MODQT_LIBDIR}/mkspecs/openbsd-g++ \
		PREFIX=${LOCALBASE} \
		DESKTOPDIR=${LOCALBASE}/share/applications \
		ICONDIR=${LOCALBASE}/share/pixmaps \
		texmaker.pro

.include <bsd.port.mk>
