# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 14:41:03 zinke Exp $

SHARED_ONLY=		Yes

COMMENT=		XMPP plugin for irssi

DISTNAME=		irssi-xmpp-0.52

CATEGORIES=		net

HOMEPAGE=		http://cybione.org/~irssi-xmpp/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		glib-2.0 iconv idn intl loudmouth-1

MASTER_SITES=		${HOMEPAGE}files/

BUILD_DEPENDS=		net/irssi:configure
LIB_DEPENDS=		net/loudmouth
RUN_DEPENDS=		net/irssi

MAKE_FLAGS=		CC="${CC}" IRSSI_INCLUDE="${WRKDIR}/irssi-src"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

post-extract:
	@ln -sf ${WRKDIR}/net/irssi/irssi-* ${WRKDIR}/irssi-src

.include <bsd.port.mk>
