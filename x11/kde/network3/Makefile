# $OpenBSD: Makefile,v 1.39 2006/04/29 02:17:48 brad Exp $

COMMENT= 		"K Desktop Environment, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.2
DISTNAME=		kdenetwork-${VERSION}
PKGNAME=		${DISTNAME}p2
MODKDE_VERSION=		3.5.2
FLAVORS=debug
SHARED_LIBS=		kopete			2.0 \
			kopete_msn_shared	1.0 \
			kopete_oscar		3.0 \
			kopete_videodevice	1.0 \
			rss			2.0

BUILD_DEPENDS+=	::devel/pkgconfig
LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell,kdnssd,knewstuff::x11/kde/libs3 \
	xmms::audio/xmms \
	idn::devel/libidn

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xi Xrender Xss Xtst Xxf86vm art_lgpl_2 c \
		crypto gdk glib gmodule gtk iconv intl jpeg m pcre pcreposix \
		png pthread ssl stdc++ util xml2 xslt z glib-2.0.0.0

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
