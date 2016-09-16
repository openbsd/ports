# $OpenBSD: Makefile,v 1.82 2016/09/16 07:53:44 giovanni Exp $

COMMENT=	tty-based e-mail client

D=		20160910
DISTNAME=	neomutt-$D
PKGNAME=	mutt-1.7.0.$D
EPOCH=		1

CATEGORIES=	mail
HOMEPAGE=	http://www.mutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB+=	c crypto iconv idn intl qdbm ssl z

MASTER_SITES=	https://github.com/neomutt/neomutt/releases/download/neomutt-$D/
DIST_SUBDIR=	mutt
PATCH_DIST_STRIP= -p1

LIB_DEPENDS=	databases/qdbm \
		devel/gettext \
		devel/libidn
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

FLAVORS=	gpgme sasl slang
FLAVOR?=

CONFIGURE_STYLE=  gnu

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

CONFIGURE_ARGS+= --enable-external_dotlock \
		--disable-fcntl \
		--enable-compressed \
		--enable-flock \
		--enable-hcache \
		--disable-notmuch \
		--enable-sidebar \
		--with-idn \
		--enable-imap \
		--enable-pop \
		--enable-smtp \
		--enable-nntp \
		--mandir=${PREFIX}/man \
		--without-gdbm \
		--without-tokyocabinet \
		--with-qdbm \
		--with-docdir="${PREFIX}/share/doc/mutt" \
		--with-ssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"
SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/mutt"

.if defined(DEBUG)
CONFIGURE_ARGS+=	--enable-debug
.endif

## standard flavours:

.if ${FLAVOR:Mgpgme}
CONFIGURE_ARGS+= --enable-gpgme
LIB_DEPENDS+=	security/gpgme
WANTLIB+=	assuan gpg-error gpgme
.endif

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

.if ${FLAVOR:Mslang}
CONFIGURE_ARGS+= --with-slang="${PREFIX}"
LIB_DEPENDS+=	devel/libslang
WANTLIB+=	m termlib slang>=14
.else
CONFIGURE_ARGS+= --with-curses
WANTLIB+=	ncurses
.endif

post-install:
	@mv -f ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/mutt/gpg.rc

.include <bsd.port.mk>
