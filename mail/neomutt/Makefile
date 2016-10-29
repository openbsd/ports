# $OpenBSD: Makefile,v 1.3 2016/10/29 11:39:39 sthen Exp $

COMMENT=	tty-based e-mail client, Mutt with patches

V=		20161028
DISTNAME=	neomutt-$V

CATEGORIES=	mail
HOMEPAGE=	http://www.neomutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB+=	c crypto iconv idn intl ncursesw ssl z

MASTER_SITES=	https://github.com/neomutt/neomutt/releases/download/neomutt-$V/

LIB_DEPENDS+=	devel/gettext \
		devel/libidn
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

FLAVORS=	gpgme sasl
FLAVOR?=

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --enable-compressed \
		--enable-external_dotlock \
		--disable-fcntl \
		--enable-flock \
		--enable-hcache \
		--enable-imap \
		--enable-nntp \
		--disable-notmuch \
		--enable-pop \
		--enable-sidebar \
		--enable-smtp \
		--mandir=${PREFIX}/man \
		--with-curses \
		--with-docdir="${PREFIX}/share/doc/mutt" \
		--without-tokyocabinet \
		--without-gdbm \
		--with-idn \
		--with-ssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"
SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/mutt"

DEBUG+=		-g
#CONFIGURE_ARGS+= --enable-debug

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

.include <bsd.port.arch.mk>

.if ${ARCH} == arm || ${ARCH} == hppa || ${ARCH} == powerpc
LIB_DEPENDS+=	databases/qdbm
WANTLIB+=	qdbm
CONFIGURE_ARGS+= --without-kyotocabinet \
		--with-qdbm
.else
LIB_DEPENDS+=	databases/kyotocabinet
WANTLIB+=	kyotocabinet pthread
CONFIGURE_ARGS+= --with-kyotocabinet \
		--without-qdbm
.endif

post-install:
	@mv -f ${PREFIX}/share/doc/mutt/samples/* ${PREFIX}/share/examples/mutt
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/mutt/gpg.rc

.include <bsd.port.mk>
