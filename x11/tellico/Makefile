# $OpenBSD: Makefile,v 1.2 2007/04/09 18:43:47 espie Exp $

COMMENT=	'organizer for book/dvd/music collections'
CATEGORIES=	databases x11

HOMEPAGE=	http://www.periapsis.org/tellico/
MASTER_SITES=	${HOMEPAGE}download/
DISTNAME=	tellico-1.2.10
PKGNAME=	${DISTNAME}p0

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

MODULES=	x11/kde
# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=${MODKDE_CONFIGURE_ARGS} \
		--disable-libsuffix \
		--disable-static \
		--enable-shared \
		--enable-final

RUN_DEPENDS=		::lang/python/2.4
BUILD_DEPENDS=		${RUN_DEPENDS}

LIB_DEPENDS=		${MODQT_LIB_DEPENDS} \
			kdecore.>=6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,knewstuff,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
			kcal,ktnef::x11/kde/pim3 \
			kcddb::x11/kde/multimedia3 \
			tag::audio/taglib \
			yaz::net/yaz

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c crypto
WANTLIB += exslt gcrypt gpg-error iconv idn intl jpeg m pcre pcreposix
WANTLIB += png pthread ssl stdc++ util xml2 xslt z

CONFIGURE_ENV=${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS=${MODKDE_MAKE_FLAGS}

.include <bsd.port.mk>
