# $OpenBSD: Makefile,v 1.9 2010/10/24 21:15:33 ajacoutot Exp $

COMMENT=		Joe's Window Manager

DISTNAME=		jwm-2.0.1
REVISION=		2

CATEGORIES=		x11

HOMEPAGE=		http://www.joewing.net/programs/jwm/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xft Xinerama Xpm Xrender c expat \
			fontconfig freetype fribidi jpeg m png.>=2 \
			pthread-stubs xcb z

MASTER_SITES=		${HOMEPAGE}/releases/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		::devel/fribidi \
			::graphics/png \
			::graphics/jpeg

NO_REGRESS=		Yes

USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include/ ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib/"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/jwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jwm
	${INSTALL_DATA} ${WRKSRC}/example.jwmrc \
		${PREFIX}/share/examples/jwm/system.jwmrc

.include <bsd.port.mk>
