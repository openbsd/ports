# $OpenBSD: Makefile,v 1.125 2020/05/14 12:26:39 ajacoutot Exp $

PORTROACH=		limitw:1,even

COMMENT=		Cyrus IMAP server

V=			3.2.0
DISTNAME=		cyrus-imapd-${V}

SHARED_LIBS +=	cyrus                     0.0 # 0.0
SHARED_LIBS +=	cyrus_imap                0.0 # 0.0
SHARED_LIBS +=	cyrus_min                 0.0 # 0.0
SHARED_LIBS +=	cyrus_sieve               0.0 # 0.0

CATEGORIES=		mail

HOMEPAGE=		https://www.cyrusimap.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYING file in package
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c com_err crypto icudata icui18n
WANTLIB += icuuc jansson m pcre pcreposix perl sasl2 sqlite3 ssl
WANTLIB += uuid z

MASTER_SITES=		https://github.com/cyrusimap/cyrus-imapd/releases/download/cyrus-imapd-${V}/

COMPILER=		base-clang ports-gcc base-gcc
USE_GMAKE=		Yes

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
			--without-chardet \
			--without-cld2 \
			--without-sphinx-build \
			--without-zeroskip \
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

DEBUG_PACKAGES=		${BUILD_PACKAGES}

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
		${PREFIX}/share/doc/cyrus-imapd/text
# cleanup
	rm -r ${PREFIX}/share/doc/cyrus-imapd/html/{_*,.buildinfo}
	find ${PREFIX}/share/{doc,examples}/cyrus-imapd -name '.gitignore' -or \
		-name '*.orig' -exec rm '{}' \+

.include <bsd.port.mk>
