# $OpenBSD: Makefile,v 1.12 2009/10/10 10:38:24 sthen Exp $

COMMENT=	organizer for book/dvd/music collections

DISTNAME=	tellico-1.3.6
CATEGORIES=	x11 databases

HOMEPAGE=	http://www.periapsis.org/tellico/
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c
WANTLIB+=	exslt gcrypt gpg-error idn jpeg m pcre pcreposix
WANTLIB+=	png pthread stdc++ util xml2 xslt z fam rpcsvc
WANTLIB+=	expat fontconfig freetype pthread-stubs xcb

MODULES=	x11/kde \
		lang/python \
		devel/gettext

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS} \
		${CONFIGURE_SHARED} \
		--disable-libsuffix \
		--enable-final

MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info->=0.21:misc/shared-mime-info

LIB_DEPENDS=	${MODQT_LIB_DEPENDS} \
		exempi::textproc/exempi \
		kcal,ktnef,kmime::x11/kde/pim3 \
		kcddb::x11/kde/multimedia3 \
		kdecore.>=6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,knewstuff,kparts,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		poppler-qt.>=3,poppler::print/poppler,-qt \
		tag::audio/taglib \
		yaz::net/yaz

NO_REGRESS=	Yes

.include <bsd.port.mk>
