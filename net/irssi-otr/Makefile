# $OpenBSD: Makefile,v 1.1.1.1 2014/05/21 15:40:54 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	OTR (off the record) encryption support for irssi

GH_VER =	1.0.0
DISTNAME =	irssi-otr-${GH_VER}

CATEGORIES =	net security

HOMEPAGE =	https://github.com/cryptodotis/irssi-otr

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c gcrypt gpg-error otr pthread

MODULES =	devel/gettext

MASTER_SITES =	${HOMEPAGE}/archive/
DISTFILES =	${DISTNAME}{v${GH_VER}}${EXTRACT_SUFX}

BUILD_DEPENDS =	net/irssi>=0.8.15p5 \
		devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	security/libgcrypt \
		security/libotr>=4.0.0
RUN_DEPENDS =	net/irssi

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9
NO_TEST =		Yes

MAKE_FLAGS =		IRSSI_DIST="$(LOCALBASE)/include/irssi"

# libtool.m4 required for build, but also loading the module into irssi
# fails with /usr/bin/libtool as of 20140521
USE_LIBTOOL =		gnu

LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_ARGS +=	--with-libotr-inc-prefix=${LOCALBASE}/include

post-patch:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
