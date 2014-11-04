# $OpenBSD: Makefile,v 1.12 2014/11/04 10:58:21 sthen Exp $

COMMENT=	radio contest logger

DISTNAME=	tlf-1.2.1
CATEGORIES=	comms hamradio

HOMEPAGE=	http://home.iae.nl/users/reinc/TLF-0.2.html

MASTER_SITES=	https://github.com/Tlf/tlf/archive/
WRKDIST=	${WRKDIR}/tlf-${DISTNAME}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	glib-2.0 hamlib>=2 ncurses panel pthread sndio c m
MODULES+=	devel/gettext

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.11
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-hamlib
LIB_DEPENDS=	comms/hamlib \
		devel/glib2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-lsndio -L${LOCALBASE}/lib"

post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    autoreconf --install

.include <bsd.port.mk>
