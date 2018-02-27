# $OpenBSD: Makefile,v 1.13 2018/02/27 08:53:22 bentley Exp $

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.54
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		https://cybione.org/~irssi-xmpp/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  glib-2.0 iconv idn intl loudmouth-1

MASTER_SITES=		${HOMEPAGE}files/

BUILD_DEPENDS=		net/irssi>=0.8.15p5
LIB_DEPENDS=		net/loudmouth
RUN_DEPENDS=		net/irssi

MAKE_FLAGS=		CC="${CC}" IRSSI_INCLUDE="${LOCALBASE}/include/irssi/"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
