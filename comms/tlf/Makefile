# $OpenBSD: Makefile,v 1.17 2019/07/12 20:43:48 sthen Exp $

PORTROACH=	skipv:bm_start

COMMENT=	radio contest logger

DISTNAME=	tlf-1.2.1
CATEGORIES=	comms hamradio
REVISION=	1

HOMEPAGE=	http://home.iae.nl/users/reinc/TLF-0.2.html

MASTER_SITES=	https://github.com/Tlf/tlf/archive/
WRKDIST=	${WRKDIR}/tlf-${DISTNAME}

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=  c glib-2.0 hamlib>=2 iconv intl m curses panel pthread sndio

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.11

CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS+= --enable-hamlib
LIB_DEPENDS=	comms/hamlib \
		devel/glib2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-lsndio -L${LOCALBASE}/lib"

.include <bsd.port.mk>
