# $OpenBSD: Makefile,v 1.14 2017/11/21 00:12:59 naddy Exp $

PORTROACH=	skipv:bm_start

COMMENT=	radio contest logger

DISTNAME=	tlf-1.2.1
CATEGORIES=	comms hamradio
REVISION=	0

HOMEPAGE=	http://home.iae.nl/users/reinc/TLF-0.2.html

MASTER_SITES=	https://github.com/Tlf/tlf/archive/
WRKDIST=	${WRKDIR}/tlf-${DISTNAME}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  c glib-2.0 hamlib>=2 iconv intl m ncurses panel pthread sndio

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
