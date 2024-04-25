COMMENT=	tty-based e-mail client, forked from Mutt

GH_ACCOUNT=	neomutt
GH_PROJECT=	neomutt
GH_TAGNAME=	20240425

CATEGORIES=	mail
HOMEPAGE=	https://neomutt.org/

EPOCH=		0

# GPLv2+
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

# uses pledge()
WANTLIB+=	c crypto curses iconv idn2 intl ssl tdb z

LIB_DEPENDS+=	databases/tdb \
		devel/gettext,-runtime \
		devel/libidn2
BUILD_DEPENDS+=	devel/gettext,-tools \
		lang/jimtcl \
		textproc/docbook-xsl \
		w3m-*|lynx-*:www/lynx
DEBUG_PACKAGES=	${BUILD_PACKAGES}

SEPARATE_BUILD=	Yes
FLAVORS=	gpgme sasl notmuch
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS+= --mandir="${PREFIX}/man" \
		--with-ui=ncurses \
		--docdir="${PREFIX}/share/doc/neomutt" \
		--with-lock=flock \
		--idn=0 \
		--idn2 \
		--fmemopen \
		--ssl \
		--tdb \
		--debug

CONFIGURE_ENV=	autosetup_tclsh="${LOCALBASE}/bin/jimsh" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CCACHE=none \
		LDFLAGS="-L${LOCALBASE}/lib"

SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/neomutt"

.if ${FLAVOR:Mgpgme}
CONFIGURE_ARGS+= --autocrypt \
		--gpgme \
		--sqlite
LIB_DEPENDS+=	databases/sqlite3 \
		security/gpgme
WANTLIB+=	gpg-error gpgme sqlite3
.endif

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+= --sasl
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

.if ${FLAVOR:Mnotmuch}
CONFIGURE_ARGS+= --notmuch
LIB_DEPENDS+=	mail/notmuch/notmuch,-main
WANTLIB+=	notmuch
.endif

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH} != hppa
LIB_DEPENDS+=  databases/kyotocabinet
WANTLIB+=      kyotocabinet
CONFIGURE_ARGS+= --kyotocabinet
.endif

.include <bsd.port.mk>
