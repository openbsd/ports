# $OpenBSD: Makefile,v 1.14 2011/09/16 09:48:09 espie Exp $
# $FreeBSD: ports/editors/texmaker/Makefile,v 1.2 2004/01/09 09:16:33 krion Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-3.0.2
REVISION=		0
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

WANTLIB += QtGui QtNetwork QtWebKit QtXml c hunspell-1.2 m poppler
WANTLIB += poppler-qt4 pthread stdc++ z

MODULES=		x11/qt4

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		textproc/hunspell \
			print/poppler,-qt4

NO_REGRESS=		Yes

FAKE_FLAGS=		INSTALL_ROOT=${WRKINST}

do-configure:
	@cd ${WRKSRC} && \
	qmake4  -spec ${MODQT_LIBDIR}/mkspecs/openbsd-g++ \
		PREFIX=${LOCALBASE} \
		DESKTOPDIR=${LOCALBASE}/share/applications \
		ICONDIR=${LOCALBASE}/share/pixmaps \
		texmaker.pro

.include <bsd.port.mk>
