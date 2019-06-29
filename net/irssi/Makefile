# $OpenBSD: Makefile,v 1.81 2019/06/29 00:55:29 kn Exp $

COMMENT =	modular IRC client with many features (ipv6,socks,proxy)

V =		1.2.1
DISTNAME =	irssi-$V
PKGSPEC =	irssi-=$V

CATEGORIES =	net

HOMEPAGE =	https://www.irssi.org/

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto curses gcrypt glib-2.0 gmodule-2.0 gpg-error \
		iconv intl m otr pcre perl pthread ssl

MASTER_SITES =	https://github.com/irssi/irssi/releases/download/${V}/

FLAVORS =	socks
FLAVOR ?=

LIB_DEPENDS =	devel/glib2>=2.28.0 \
		security/libgcrypt>=1.2.0 \
		security/libotr>=4.1.0

LIBTOOL_FLAGS +=	--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-otr=module \
			--with-perl-lib=${PREFIX}/libdata/perl5/site_perl \
			--with-perl=yes \
			--with-pic \
			--with-proxy
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_lib_utf8proc_utf8proc_version=no
SEPARATE_BUILD =	Yes

.if ${FLAVOR:Msocks}
CONFIGURE_ARGS +=	--with-socks
LIB_DEPENDS +=		security/dante
WANTLIB +=		socks
.endif

MAKE_FLAGS =	scriptdir="${SYSCONFDIR}/irssi/scripts" \
		themedir="${SYSCONFDIR}/irssi/themes"
FAKE_FLAGS =	confdir="${PREFIX}/share/examples/irssi" \
		scriptdir="${PREFIX}/share/examples/irssi/scripts" \
		themedir="${PREFIX}/share/examples/irssi/themes"

post-patch:
	${SUBST_CMD} ${WRKSRC}/docs/irssi.1

post-install:
	${INSTALL_DATA} ${WRKBUILD}/irssi-config ${PREFIX}/include/irssi/

.include <bsd.port.mk>
