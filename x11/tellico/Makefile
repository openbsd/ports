# $OpenBSD: Makefile,v 1.7 2008/02/08 15:30:54 okan Exp $

COMMENT=	organizer for book/dvd/music collections

DISTNAME=	tellico-1.2.14
CATEGORIES=	x11 databases

HOMEPAGE=	http://www.periapsis.org/tellico/
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c crypto
WANTLIB+=	exslt gcrypt gpg-error iconv idn intl jpeg m pcre pcreposix
WANTLIB+=	png pthread ssl stdc++ util xml2 xslt z fam rpcsvc

MODULES=	x11/kde \
		lang/python

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS} \
		${CONFIGURE_SHARED} \
		--disable-libsuffix \
		--enable-final

MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS=	${MODQT_LIB_DEPENDS} \
		kdecore.>=6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,knewstuff,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		kcal,ktnef::x11/kde/pim3 \
		kcddb::x11/kde/multimedia3 \
		tag::audio/taglib \
		yaz::net/yaz

.include <bsd.port.mk>
