# $OpenBSD: Makefile,v 1.17 2002/12/13 14:56:43 fgsch Exp $

COMMENT=	"gtk+ chess board interface"

DISTNAME=	eboard-0.7.0
CATEGORIES=	games

HOMEPAGE=	http://eboard.sourceforge.net

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>


PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=eboard/}

LIB_DEPENDS=		Imlib.19,gdk_imlib::graphics/imlib

MODULES=		gettext

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS+=		CXXFLAGS="${CXXFLAGS}" CFLAGS="${CFLAGS}"

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
