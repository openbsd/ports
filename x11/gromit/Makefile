# $OpenBSD: Makefile,v 1.1.1.1 2005/06/15 17:30:20 niallo Exp $

COMMENT=		"small tool to make annotations on the screen"

DISTNAME=		gromit-20041213
CATEGORIES=		x11

HOMEPAGE=		http://www.home.unix-ag.org/simon/gromit/

MAINTAINER=		Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=		Xrender c freetype X11 m Xft fontconfig atk-1.0.0.0 \
			glib-2.0.0.0 gobject-2.0.0.0 gmodule-2.0.0.0 \
			pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0
			

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		${LIB_DEPENDS}
	

NO_REGRESS=		Yes

DOCDIR=			${PREFIX}/share/doc/gromit/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gromit ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/gromitrc ${DOCDIR}

.include <bsd.port.mk>

