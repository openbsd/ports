# $OpenBSD: Makefile,v 1.57 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT = 		K Desktop Environment, additional artwork
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeartwork-${VERSION}
PKGNAME =		${DISTNAME}p3
MODKDE_VERSION =	3.5.8

LIB_DEPENDS =		kdecore.>=6,DCOP,kdefx,kdesu,kdeui,kio,kparts,kscreensaver::x11/kde/libs3 \
			kdecorations::x11/kde/base3
SEPARATE_BUILD =	flavored

CONFIGURE_ENV +=	XSCREENSAVER=${LOCALBASE}/libexec/xscreensaver

BUILD_DEPENDS =		:xscreensaver-data-*:x11/xscreensaver,-data,no_gle
RUN_DEPENDS =		:xscreensaver-data-*:x11/xscreensaver,-data,no_gle

WANTLIB =	GL GLU ICE SM X11 Xext Xrender Xt art_lgpl_2 artsflow \
		artsflow_idl artskde audiofile c glib-2.0 \
		gmodule-2.0 gthread-2.0 iconv intl jpeg kmedia2_idl \
		kwalletclient m mad mcop ogg png pthread qtmcop sndio \
		soundserver_idl stdc++ util vorbis vorbisenc vorbisfile z \
		idn Xau Xdmcp fam rpcsvc pcre pthread-stubs xcb


.include <bsd.port.mk>
