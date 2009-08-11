# $OpenBSD: Makefile,v 1.62 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT = 		K Desktop Environment, network applications
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdenetwork-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION =	3.5.8
FLAVORS =		debug
SHARED_LIBS +=	kopete               2.0      # .1.0
SHARED_LIBS +=	kopete_videodevice   1.0      # .0.0
SHARED_LIBS +=	kopete_msn_shared    1.0      # .0.0
SHARED_LIBS +=	kopete_oscar         3.0      # .2.0
SHARED_LIBS +=	rss                  2.0      # .1.0

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	kdecore.>=6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell,kdnssd,knewstuff::x11/kde/libs3 \
	xmms::audio/xmms \
	idn::devel/libidn \
	meanwhile::net/meanwhile
RUN_DEPENDS +=	::security/qca-tls

SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xi Xrender Xss Xtst Xxf86vm art_lgpl_2 c \
		crypto gdk glib gmodule gtk iconv intl jpeg m pcre pcreposix \
		png pthread ssl stdc++ util xml2 xslt z glib-2.0 gmodule-2.0 \
		Xau Xdmcp fam rpcsvc pthread-stubs xcb

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
