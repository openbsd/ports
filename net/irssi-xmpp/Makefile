# $OpenBSD: Makefile,v 1.5 2014/01/10 23:57:32 jca Exp $

SHARED_ONLY=		Yes

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.52
REVISION =		2

CATEGORIES=		net

HOMEPAGE=		http://cybione.org/~irssi-xmpp/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		glib-2.0 idn loudmouth-1

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		devel/gettext

BUILD_DEPENDS=		net/irssi>=0.8.15p5
LIB_DEPENDS=		net/loudmouth
RUN_DEPENDS=		net/irssi

MAKE_FLAGS=		CC="${CC}" IRSSI_INCLUDE="${LOCALBASE}/include/irssi/"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
