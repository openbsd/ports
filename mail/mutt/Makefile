# $OpenBSD: Makefile,v 1.155 2021/12/12 13:04:43 sthen Exp $

COMMENT=	tty-based e-mail client

DISTNAME=	mutt-2.1.4
EPOCH=		3

CATEGORIES=	mail
HOMEPAGE=	http://www.mutt.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

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
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

FLAVORS=	debug gpgme sasl slang
FLAVOR?=

CONFIGURE_STYLE=  gnu

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

MODULES=	lang/python
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
	    chmod +x *.sh *.p[ly] mutt_xtitle markdown2html

.include <bsd.port.mk>
