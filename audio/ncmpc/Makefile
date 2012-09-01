# $OpenBSD: Makefile,v 1.24 2012/09/01 14:36:56 ajacoutot Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		ncmpc-0.20
EPOCH=			0
CATEGORIES=		audio
REVISION=	0

HOMEPAGE=		http://mpd.wikia.com/wiki/Client:Ncmpc

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c glib-2.0 mpdclient>=1 ncursesw
LIB_DEPENDS=		devel/glib2 \
			audio/libmpdclient>=2.4
MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPP=${CPP} \
			CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
