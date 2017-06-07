# $OpenBSD: Makefile,v 1.10 2017/06/07 21:58:16 sthen Exp $

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.53
REVISION=		0

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
