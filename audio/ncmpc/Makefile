# $OpenBSD: Makefile,v 1.26 2013/09/19 16:34:14 dcoppa Exp $

COMMENT=		curses based frontend for mpd

MAJV=			0
MINV=			21
DISTNAME=		ncmpc-${MAJV}.${MINV}
EPOCH=			0
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/clients/ncmpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c glib-2.0 mpdclient>=1 ncursesw
LIB_DEPENDS=		devel/glib2 \
			audio/libmpdclient>=2.4
MODULES=		devel/gettext

MASTER_SITES=		http://www.musicpd.org/download/ncmpc/${MAJV}/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPP=${CPP} \
			CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
