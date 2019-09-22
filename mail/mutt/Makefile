# $OpenBSD: Makefile,v 1.122 2019/09/22 00:04:21 sthen Exp $

COMMENT=	tty-based e-mail client

DISTNAME=	mutt-1.12.2
EPOCH=		3

CATEGORIES=	mail
HOMEPAGE=	http://www.mutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	c crypto curses iconv idn2 intl qdbm ssl unistring z

MASTER_SITES=	http://ftp.mutt.org/pub/mutt/ \
		https://ftp.osuosl.org/pub/mutt/ \
		https://bitbucket.org/mutt/mutt/downloads/ \
		ftp://ftp.mutt.org/pub/mutt/

LIB_DEPENDS=	databases/qdbm \
		devel/gettext,-runtime \
		devel/libidn2
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

FLAVORS=	gpgme sasl slang
FLAVOR?=

CONFIGURE_STYLE=  gnu

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

CONFIGURE_ARGS+= --enable-compressed \
		--enable-external_dotlock \
		--disable-fcntl \
		--enable-flock \
		--enable-hcache \
		--with-idn2 \
		--enable-imap \
		--enable-pop \
		--enable-sidebar \
		--enable-smtp \
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
WANTLIB+=	m slang>=14
.else
CONFIGURE_ARGS+= --with-curses
.endif

post-install:
	mv -f ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	sed -i -e 's,gpg ,${LOCALBASE}/bin/gpg2 ,' \
		${PREFIX}/share/examples/mutt/gpg.rc

.include <bsd.port.mk>
