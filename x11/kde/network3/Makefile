# $OpenBSD: Makefile,v 1.28 2005/02/07 11:30:05 espie Exp $

COMMENT= 		"K Desktop Environment, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdenetwork-${VERSION}
PKGNAME=		${DISTNAME}p0
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
