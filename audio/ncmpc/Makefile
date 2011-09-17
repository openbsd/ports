# $OpenBSD: Makefile,v 1.22 2011/09/17 13:30:15 jasper Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		ncmpc-0.19
EPOCH=			0
CATEGORIES=		audio

HOMEPAGE=		http://mpd.wikia.com/wiki/Client:Ncmpc

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

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
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
