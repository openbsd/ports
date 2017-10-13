# $OpenBSD: Makefile,v 1.19 2017/10/13 16:27:13 sthen Exp $

COMMENT=	tty-based e-mail client, Mutt with patches

GH_ACCOUNT=	neomutt
GH_PROJECT=	neomutt
GH_TAGNAME=	neomutt-20171013
DISTNAME=	${GH_TAGNAME}

CATEGORIES=	mail
HOMEPAGE=	http://www.neomutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB+=	c crypto iconv idn intl ncursesw ssl z

LIB_DEPENDS+=	devel/gettext \
		devel/libidn
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

FLAVORS=	gpgme sasl
FLAVOR?=

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
CONFIGURE_STYLE= autoconf
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/gettext-tools
CONFIGURE_ARGS+= --disable-fcntl \
		--enable-flock \
		--disable-notmuch \
		--mandir=${PREFIX}/man \
		--with-curses \
		--with-docdir="${PREFIX}/share/doc/neomutt" \
		--without-tokyocabinet \
		--without-gdbm \
		--with-idn \
		--with-ssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ISPELL="${LOCALBASE}/bin/ispell"
SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/neomutt"

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
WANTLIB+=	kyotocabinet
CONFIGURE_ARGS+= --with-kyotocabinet \
		--without-qdbm
.endif

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf --install

post-install:
	@mv -f ${PREFIX}/share/doc/neomutt/samples/* ${PREFIX}/share/examples/neomutt
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/neomutt/gpg.rc

.include <bsd.port.mk>
