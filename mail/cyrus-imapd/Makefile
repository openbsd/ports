PORTROACH=		limitw:1,even

COMMENT=		Cyrus IMAP server

V=			3.10.1
DISTNAME=		cyrus-imapd-${V}

SHARED_LIBS +=  cyrus_min            0.0      # unknown
SHARED_LIBS +=  cyrus                0.0      # unknown
SHARED_LIBS +=  cyrus_imap           0.0      # unknown
SHARED_LIBS +=  cyrus_sieve          0.0      # unknown

CATEGORIES=		mail

HOMEPAGE=		https://www.cyrusimap.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYING file in package
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} brotlicommon brotlienc c com_err
WANTLIB += crypto db db_cxx execinfo ical icalss icalvcal iconv
WANTLIB += icudata icui18n icuuc jansson lzma m nghttp2 pcre2-8
WANTLIB += pcre2-posix perl sasl2 sqlite3 srs2 ssl uuid xapian
WANTLIB += xml2 z zstd

SITES=			https://github.com/cyrusimap/cyrus-imapd/releases/download/cyrus-imapd-${V}/

COMPILER=		base-clang ports-gcc base-gcc
USE_GMAKE=		Yes

# xapian support, needed to for compacting databases
BUILD_DEPENDS +=	net/rsync
RUN_DEPENDS +=		net/rsync

# xxd(1), needed for caldav support
BUILD_DEPENDS +=	editors/vim

LIB_DEPENDS=		archivers/brotli \
			databases/sqlite3 \
			databases/xapian-core \
			devel/jansson \
			devel/pcre2 \
			mail/libsrs2 \
			security/cyrus-sasl2 \
			sysutils/e2fsprogs \
			textproc/icu4c \
			textproc/libical \
			textproc/libxml \
			www/nghttp2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--bindir=${PREFIX}/cyrus/bin \
			--libexec=${PREFIX}/cyrus/libexec \
			--sbindir=${PREFIX}/cyrus/sbin \
			--with-sasl=${LOCALBASE} \
			--with-cyrus-user=_cyrus \
			--with-syslogfacility=MAIL \
			--without-chardet \
			--without-sphinx-build \
			--without-zeroskip \
			--disable-gssapi \
			--enable-autocreate \
			--enable-backup \
			--enable-calalarmd \
			--enable-http \
			--enable-idled \
			--enable-jmap \
			--enable-murder \
			--enable-replication \
			--enable-srs

# needed for jmap support
CONFIGURE_ARGS +=	--enable-xapian

# FLAVOR?
CONFIGURE_ARGS +=	--without-clamav

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
