# $OpenBSD: Makefile,v 1.14 2002/06/07 18:38:45 fgsch Exp $

COMMENT=	"gtk+ chess board interface"

DISTNAME=	eboard-0.5.2
CATEGORIES=	games
NEED_VERSION=	1.528

HOMEPAGE=	http://eboard.sourceforge.net

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=eboard/}

LIB_DEPENDS=		Imlib.19,gdk_imlib::graphics/imlib

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
