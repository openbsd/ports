# $OpenBSD: Makefile,v 1.2 2016/04/25 21:01:45 tb Exp $

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.4.7
CATEGORIES =	net

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.profanity.im/

WANTLIB += assuan c curl ereadline glib-2.0 gpg-error gpgme intl ncursesw
WANTLIB += otr strophe uuid

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE)DEPENDS} \

LIB_DEPENDS +=	net/curl \
		devel/readline>=6.1p2 \
		devel/glib2 \
		net/libstrophe \
		security/gpgme \
		security/libotr \
		sysutils/e2fsprogs

TEST_DEPENDS =	devel/cmocka

CONFIGURE_STYLE = autoconf
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-xscreensaver=no \
			--enable-notifications \
			--enable-otr

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

# there is no stub_ui.h and is not needed
post-patch:
	find ${WRKSRC} -type f -name "*.c" \
		-exec sed -i '/stub\_ui.h/d' "{}" \;
	sed -i s,/usr/local,${LOCALBASE}, ${WRKSRC}/configure.ac

.include <bsd.port.mk>
