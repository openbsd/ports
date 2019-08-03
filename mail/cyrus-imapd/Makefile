# $OpenBSD: Makefile,v 1.122 2019/08/03 10:41:25 ajacoutot Exp $

PORTROACH=		limitw:1,even

COMMENT=		Cyrus IMAP server

V=			3.0.11
DISTNAME=		cyrus-imapd-${V}

SHARED_LIBS +=	cyrus                     0.0 # 0.0
SHARED_LIBS +=	cyrus_imap                0.0 # 0.0
SHARED_LIBS +=	cyrus_min                 0.0 # 0.0
SHARED_LIBS +=	cyrus_sieve               0.0 # 0.0

CATEGORIES=		mail

HOMEPAGE=		https://www.cyrusimap.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYING file in package
PERMIT_PACKAGE=	Yes

WANTLIB += c com_err crypto icudata icuuc jansson m pcre pcreposix
WANTLIB += pthread sasl2 sqlite3 ssl ${COMPILER_LIBCXX} uuid z
WANTLIB += perl # uses perl ABI

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://www.cyrusimap.org/releases/ \
			ftp://ftp.cyrusimap.org/cyrus-imapd/ \
			ftp://ftp.cyrusimap.org/cyrus-imapd/OLD-VERSIONS/

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/py-sphinx

LIB_DEPENDS=		databases/sqlite3 \
			devel/jansson \
			devel/pcre \
			security/cyrus-sasl2 \
			sysutils/e2fsprogs \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			cyrus_cv_sse42=no
CONFIGURE_ARGS=		--bindir=${PREFIX}/cyrus/bin \
			--libexec=${PREFIX}/cyrus/libexec \
			--sbindir=${PREFIX}/cyrus/sbin \
			--with-sasl=${LOCALBASE} \
			--with-cyrus-user=_cyrus \
			--with-syslogfacility=MAIL \
			--disable-gssapi \
			--enable-autocreate \
			--enable-idled \
			--enable-murder \
			--enable-nntp

# XXX FLAVOR
CONFIGURE_ARGS +=	--without-snmp

# XXX notyet; FLAVOR
CONFIGURE_ARGS +=	--without-clamav \
			--disable-http

# --mandir is overriden by the ports infrastructure
FAKE_FLAGS=		mandir=${PREFIX}/cyrus/man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/cyrus-imapd
	cp -R ${WRKSRC}/doc/[!examples]* ${PREFIX}/share/doc/cyrus-imapd
	cp -R ${WRKSRC}/doc/examples/* ${PREFIX}/share/examples/cyrus-imapd
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/cyrus-imapd
	cp -R ${WRKSRC}/tools ${PREFIX}/share/examples/cyrus-imapd/
	${INSTALL_DATA} ${FILESDIR}/imapd.conf \
		${PREFIX}/share/examples/cyrus-imapd/
	rm -r ${PREFIX}/libdata/perl5/${MACHINE_ARCH}-openbsd \
		${PREFIX}/share/doc/cyrus-imapd/text \
		${PREFIX}/share/examples/cyrus-imapd/tools/vzic
# cleanup
	rm -r ${PREFIX}/share/doc/cyrus-imapd/html/{_*,.buildinfo}
	find ${PREFIX}/share/{doc,examples}/cyrus-imapd -name '.gitignore' -or \
		-name '*.orig' -exec rm '{}' \+

.include <bsd.port.mk>
