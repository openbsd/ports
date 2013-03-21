# $OpenBSD: Makefile,v 1.26 2013/03/21 08:48:57 ajacoutot Exp $

COMMENT=	organizer for book/dvd/music collections

DISTNAME=	tellico-1.3.6
REVISION=	6

CATEGORIES=	x11 databases

HOMEPAGE=	http://www.periapsis.org/tellico/
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c
WANTLIB+=	exslt gcrypt gpg-error idn jpeg m pcre pcreposix
WANTLIB+=	png pthread stdc++ util xml2 xslt z fam
WANTLIB+=	expat fontconfig freetype pthread-stubs xcb
WANTLIB+=	poppler

MODULES=	x11/kde \
		lang/python \
		devel/gettext

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS} \
		${CONFIGURE_SHARED} \
		--disable-libsuffix \
		--enable-final

MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21 \
		x11/gtk+2,-guic

LIB_DEPENDS=	${MODQT_LIB_DEPENDS} \
		textproc/exempi \
		x11/kde/pim3 \
		x11/kde/multimedia3 \
		x11/kde/libs3 \
		graphics/lcms \
		print/poppler,,-qt \
		audio/taglib \
		net/yaz

WANTLIB +=	exempi kcal ktnef kmime kcddb \
		kdecore>=6 DCOP kabc kdefx kdeprint kdesu kdeui khtml \
		kio kjs knewstuff kparts kresources kutils kwalletclient \
		vcard lcms poppler-qt>=3 tag yaz

NO_TEST=	Yes

.include <bsd.port.mk>
