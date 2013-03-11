# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:48 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.52
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://cybione.org/~irssi-xmpp/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		glib-2.0 idn loudmouth-1

MASTER_SITES=		${HOMEPAGE}files/

MODULES=		devel/gettext

BUILD_DEPENDS=		net/irssi:configure
LIB_DEPENDS=		net/loudmouth
RUN_DEPENDS=		net/irssi

MAKE_FLAGS=		CC="${CC}" IRSSI_INCLUDE="${WRKDIR}/irssi-src"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

post-extract:
	@ln -sf ${WRKDIR}/net/irssi/irssi-* ${WRKDIR}/irssi-src

.include <bsd.port.mk>
