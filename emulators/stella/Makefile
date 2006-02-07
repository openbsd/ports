# $OpenBSD: Makefile,v 1.3 2006/02/07 17:38:41 niallo Exp $

COMMENT=		"Atari 2600 VCS emulator"

DISTNAME=		stella-2.1
CATEGORIES=		emulators
DISTFILES=		${DISTNAME}-src.tar.gz

HOMEPAGE=		http://stella.sourceforge.net/

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=stella/}

WANTLIB=		usbhid c stdc++ Xext m X11 z pthread
LIB_DEPENDS=		SDL.1.2::devel/sdl png.2::graphics/png

CXXFLAGS+=		-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--disable-gl
USE_GMAKE=		Yes
NO_REGRESS=		Yes

DOCSBASE=		${WRKDIST}/docs
HTMLDOCS=		${DOCSBASE}/*.html
HTMLGRAPHICS=		${DOCSBASE}/graphics/*.png
DOCSDIR=		${PREFIX}/share/doc/stella

do-install:
	${INSTALL_PROGRAM}	${WRKDIST}/stella ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${HTMLDOCS} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/graphics
	${INSTALL_DATA} ${HTMLGRAPHICS} ${DOCSDIR}/graphics/

.include <bsd.port.mk>
