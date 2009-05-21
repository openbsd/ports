# $OpenBSD: Makefile,v 1.10 2009/05/21 21:29:29 benoit Exp $

COMMENT=		Atari 2600 VCS emulator

DISTNAME=		stella-2.7.7
CATEGORIES=		emulators
DISTFILES=		${DISTNAME}-src.tar.gz

HOMEPAGE=		http://stella.sourceforge.net/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=stella/}

WANTLIB=		c stdc++ m z pthread
LIB_DEPENDS=		SDL.>=1.2::devel/sdl

CXXFLAGS+=		-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--disable-gl
USE_X11=		Yes
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
