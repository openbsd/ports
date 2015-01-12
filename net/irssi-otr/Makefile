# $OpenBSD: Makefile,v 1.4 2015/01/12 00:13:53 jca Exp $

SHARED_ONLY =	Yes

COMMENT =	OTR (off the record) encryption support for irssi

V =		1.0.1
DISTNAME =	irssi-otr-$V

CATEGORIES =	net security

HOMEPAGE =	https://github.com/cryptodotis/irssi-otr

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c gcrypt gpg-error otr pthread

MASTER_SITES =	https://www.otr.im/dist/irssi-otr/
EXTRACT_SUFX = 	.tar.bz2

MODULES =	devel/gettext

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi/
	${INSTALL_DATA} ${WRKSRC}/README.md \
	    ${PREFIX}/share/doc/irssi/otr-plugin.txt

.include <bsd.port.mk>
