MULTI_PACKAGES = -main -otr

# XXX -stable package builds can't detect PKGSPEC updates properly;
# if backporting an update to stable, ensure all ports depending on
# this are bumped and that -current is same/newer version than -stable
COMMENT-main =	modular IRC client with many features
COMMENT-otr =	OTR (off-the-record) plugin for irssi

V =		1.2.3
DISTNAME =	irssi-$V
PKGSPEC-main =	irssi-=$V
PKGNAME-main =	irssi-$V
PKGNAME-otr =	irssi-otr-$V

CATEGORIES =	net

HOMEPAGE =	https://www.irssi.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto curses glib-2.0 gmodule-2.0 \
		iconv intl m pcre perl pthread ssl

MASTER_SITES =	https://github.com/irssi/irssi/releases/download/${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	devel/glib2>=2.28.0

RUN_DEPENDS-otr = net/irssi,-main
LIB_DEPENDS-otr = security/libgcrypt>=1.2.0 \
		security/libotr>=4.1.0
WANTLIB-otr =	gcrypt gpg-error iconv intl otr

LIBTOOL_FLAGS +=	--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-utf8proc \
			--with-otr=module \
			--with-perl-lib=${PREFIX}/libdata/perl5/site_perl \
			--with-perl=yes \
			--with-pic \
			--with-proxy
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SEPARATE_BUILD =	Yes

MAKE_FLAGS =	scriptdir="${SYSCONFDIR}/irssi/scripts" \
		themedir="${SYSCONFDIR}/irssi/themes"
FAKE_FLAGS =	confdir="${PREFIX}/share/examples/irssi" \
		scriptdir="${PREFIX}/share/examples/irssi/scripts" \
		themedir="${PREFIX}/share/examples/irssi/themes"

# tests write to it
PORTHOME =	${WRKDIR}

post-patch:
	${SUBST_CMD} ${WRKSRC}/docs/irssi.1

post-install:
	${INSTALL_DATA} ${WRKBUILD}/irssi-config ${PREFIX}/include/irssi/

.include <bsd.port.mk>
