# $OpenBSD: Makefile,v 1.135 2020/06/19 05:59:38 sthen Exp $

COMMENT=	tty-based e-mail client

DISTNAME=	mutt-1.14.4
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
DEBUG_PACKAGES=	${BUILD_PACKAGES}

FLAVORS=	debug gpgme sasl slang
FLAVOR?=

CONFIGURE_STYLE=  gnu

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=	No
MODPY_BUILDDEP=	No
MODPY_ADJ_FILES= contrib/markdown2html

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

## standard flavours:

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=	--enable-debug
.endif

.if ${FLAVOR:Mgpgme}
CONFIGURE_ARGS+= --enable-autocrypt \
		--enable-gpgme \
		--with-sqlite3
LIB_DEPENDS+=	databases/sqlite3 \
		security/gpgme
WANTLIB+=	assuan gpg-error gpgme sqlite3
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
	cd ${PREFIX}/share/examples/mutt; \
	    chmod +x *.sh *.pl mutt_xtitle markdown2html
	sed -i -e 's,gpg ,${LOCALBASE}/bin/gpg2 ,' \
	    ${PREFIX}/share/examples/mutt/gpg.rc

.include <bsd.port.mk>
