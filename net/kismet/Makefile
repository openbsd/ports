# $OpenBSD: Makefile,v 1.4 2005/08/06 11:40:36 robert Exp $
# Much help came from Alexandre Anriot, Robert Nagy, Bernd Ahlers,
# and, last but not least, Pedro la Peu.

ONLY_FOR_ARCHS=	amd64 arm i386 macppc sparc

COMMENT=	"802.11 layer2 wireless network detector, sniffer, and IDS"

V=		2005-07-R1a
DISTNAME=	kismet-${V}
PKGNAME=	kismet-${V:S,-,,g}
CATEGORIES=	net security

HOMEPAGE=	http://www.kismetwireless.net/
MASTER_SITES=	${HOMEPAGE}code/

MAINTAINER=	Matthias Kilian <kili@outback.escape.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses panel stdc++

CONFIGURE_STYLE=	autoconf old
AUTOCONF_VERSION=	2.59

CONFDIR=		${SYSCONFDIR}/kismet
SUBST_VARS+=		CONFDIR

CONFIGURE_ARGS=		--without-ethereal --disable-gpsmap \
			--sysconfdir=${CONFDIR}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

USE_GMAKE=		Yes

SAMPLES_DIR=		${DESTDIR}${LOCALBASE}/share/examples/kismet
FAKE_FLAGS+=		ETC=${SAMPLES_DIR}

# They don't have tests.
NO_REGRESS=		Yes

post-configure:
	@cd ${WRKSRC} && ${GMAKE} depend

post-build:
	@perl -pi -e \
		"s,/usr/local/etc(/kismet.conf),${CONFDIR}$1," \
		${WRKSRC}/man/kismet.conf.5
	@perl -pi -e \
		"s,/usr/local/etc(/kismet.conf),${CONFDIR}$1," \
		${WRKSRC}/man/kismet_drone.conf.5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README \
			${PREFIX}/share/doc/kismet

.include <bsd.port.mk>
