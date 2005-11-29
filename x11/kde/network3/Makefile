# $OpenBSD: Makefile,v 1.33 2005/11/29 14:11:33 espie Exp $

COMMENT= 		"K Desktop Environment, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		kdenetwork-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell,kdnssd,knewstuff::x11/kde/libs3 \
	xmms::audio/xmms

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xi Xrender Xss Xtst Xxf86vm art_lgpl_2 c \
		crypto gdk glib gmodule gtk iconv intl jpeg m pcre pcreposix \
		png pthread ssl stdc++ util xml2 xslt z glib-2.0.0.0

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
