# $OpenBSD: Makefile,v 1.7 2016/03/17 23:23:20 jung Exp $

SHARED_ONLY=		Yes

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.52pl20160317

GH_ACCOUNT =		cdidier
GH_PROJECT =		irssi-xmpp
GH_COMMIT =		55cc27bd8d60a5c835050f654e80deb1afe36986

CATEGORIES=		net

HOMEPAGE=		http://cybione.org/~irssi-xmpp/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		glib-2.0 idn loudmouth-1

MODULES=		devel/gettext

BUILD_DEPENDS=		net/irssi>=0.8.15p5
LIB_DEPENDS=		net/loudmouth
RUN_DEPENDS=		net/irssi

MAKE_FLAGS=		CC="${CC}" IRSSI_INCLUDE="${LOCALBASE}/include/irssi/"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
