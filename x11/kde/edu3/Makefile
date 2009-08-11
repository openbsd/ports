# $OpenBSD: Makefile,v 1.55 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT =		K Desktop Environment, edutainment
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeedu-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION ?=	3.5.8
FLAVORS =	debug
SHARED_LIBS +=	kdeeducore           4.0      # .3.0
SHARED_LIBS +=	kdeeduui             4.0      # .3.5
SHARED_LIBS +=	kdeeduplot           4.0      # .3.0
SHARED_LIBS +=	extdate              4.0      # .3.0
SHARED_LIBS +=	kiten                2.0      # .1.0
SHARED_LIBS +=	kvoctraincore        1.0      # .0.0

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient,vcard,kabc,kresources::x11/kde/libs3
SEPARATE_BUILD =	flavored

CONFIGURE_ARGS +=	--disable-kig-python-scripting

WANTLIB =	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg katepartinterfaces \
		knewstuff ktexteditor m pcre pcreposix png pthread stdc++ util \
		z qtmcop soundserver_idl artskde kmedia2_idl \
		artsflow vorbis ogg mcop pthread-stubs xcb \
		intl iconv artsflow_idl audiofile mad vorbisfile vorbisenc \
		gthread-2.0.>=800.0 gmodule-2.0.>=800.0 glib-2.0.>=800.0 idn \
		Xau Xdmcp fam rpcsvc sndio


.include <bsd.port.mk>
