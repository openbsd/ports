# $OpenBSD: Makefile,v 1.16 2019/08/30 07:24:49 kn Exp $

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.54
REVISION=		2

CATEGORIES=		net

HOMEPAGE=		https://cybione.org/~irssi-xmpp/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

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
