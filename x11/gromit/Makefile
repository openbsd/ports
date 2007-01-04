# $OpenBSD: Makefile,v 1.10 2007/01/04 20:19:54 steven Exp $

COMMENT=		"small tool to make annotations on the screen"

DISTNAME=		gromit-20041213
PKGNAME=		${DISTNAME}p4
CATEGORIES=		x11

HOMEPAGE=		http://www.home.unix-ag.org/simon/gromit/

MAINTAINER=		Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=		Xext Xrender c freetype X11 m z fontconfig \
			atk-1.0 glib-2.0 gobject-2.0 glitz png \
			gmodule-2.0 pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 cairo
			

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
	
USE_X11=		Yes
NO_REGRESS=		Yes

DOCDIR=			${PREFIX}/share/doc/gromit/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gromit ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/gromitrc_gsr ${DOCDIR}gromitrc

.include <bsd.port.mk>
