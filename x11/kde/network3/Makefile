# $OpenBSD: Makefile,v 1.27 2004/12/16 07:25:25 alek Exp $

COMMENT= 		"K Desktop Environment, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdenetwork-${VERSION}
MODKDE_VERSION=		3.3.0
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell::x11/kde/libs3 \
	xmms::audio/xmms

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xi Xrender Xss Xtst Xxf86vm art_lgpl_2 c \
		crypto gdk glib gmodule gtk iconv intl jpeg m pcre pcreposix \
		png pthread ssl stdc++ util xml2 xslt z

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
