# $OpenBSD: Makefile,v 1.64 2016/04/09 21:48:55 sthen Exp $

COMMENT =	modular IRC client with many features (ipv6,socks,proxy)

V =		0.8.19
DISTNAME =	irssi-$V
PKGSPEC =	irssi-=$V

CATEGORIES =	net

HOMEPAGE =	http://www.irssi.org/

MAINTAINER =	Wiktor Izdebski <vicviq@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m ncurses perl pthread ssl util pcre glib-2.0
WANTLIB += gmodule-2.0

MASTER_SITES =	https://github.com/irssi/irssi/releases/download/${V}/

FLAVORS =	socks
FLAVOR ?=

MODULES =	devel/gettext
LIB_DEPENDS =	devel/glib2

LIBTOOL_FLAGS +=	--tag=disable-static

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-pic \
			--with-proxy \
			--with-perl=yes \
			--with-perl-lib=${PREFIX}/libdata/perl5/site_perl

.if ${FLAVOR:Msocks}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-socks
LIB_DEPENDS +=		security/dante
WANTLIB +=		socks
.endif

MAKE_FLAGS =	scriptdir="${SYSCONFDIR}/irssi/scripts" \
		themedir="${SYSCONFDIR}/irssi/themes"
FAKE_FLAGS =	confdir="${PREFIX}/share/examples/irssi" \
		scriptdir="${PREFIX}/share/examples/irssi/scripts" \
		themedir="${PREFIX}/share/examples/irssi/themes"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/irssi.1

post-install:
	${INSTALL_DATA} ${WRKSRC}/irssi-config ${PREFIX}/include/irssi/

.include <bsd.port.mk>
