PORTROACH=		limitw:1,even

COMMENT=		Cyrus IMAP server

V=			3.13.6
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

WANTLIB += ${COMPILER_LIBCXX} brotlicommon brotlienc c chardet
WANTLIB += com_err crypto execinfo ical icalvcard iconv icudata
WANTLIB += icui18n icuuc jansson m nghttp2 pcre2-8 pcre2-posix
WANTLIB += perl sasl2 shp sqlite3 srs2 ssl uuid wslay xapian xml2
WANTLIB += z zstd

GH_ACCOUNT=		cyrusimap
GH_PROJECT=		cyrus-imapd
GH_TAGNAME=		cyrus-imapd-${V}
#SITES=			https://github.com/cyrusimap/cyrus-imapd/releases/download/cyrus-imapd-${V}/

FLAVORS=		clamav
FLAVOR?=

COMPILER=		base-clang ports-gcc base-gcc
USE_GMAKE=		Yes

YACC=			bison -y

BUILD_DEPENDS=		devel/bison \
			devel/p5-App-Cmd \
			devel/p5-Moo \
			devel/p5-Type-Tiny \
			devel/gperf

# needed for documentation and man pages
BUILD_DEPENDS +=	devel/doxygen \
			devel/py-gitpython \
			textproc/py-sphinx \
			textproc/py-sphinx_rtd_theme \
			textproc/p5-Pod-POM-View-Restructured \
			textproc/py-myst-parser \
			textproc/py-breathe

# xapian support, needed to for compacting databases
BUILD_DEPENDS +=	net/rsync
RUN_DEPENDS +=		net/rsync

# xxd(1), needed for http/caldav support
BUILD_DEPENDS +=	vim-*|vim-classic-*:editors/vim

LIB_DEPENDS=		archivers/brotli \
			databases/sqlite3 \
			databases/xapian-core \
			devel/jansson \
			devel/pcre2 \
			devel/shapelib \
			mail/libsrs2 \
			security/cyrus-sasl2 \
			sysutils/e2fsprogs \
			textproc/icu4c \
			textproc/libchardet \
			textproc/libical \
			textproc/libxml \
			www/nghttp2 \
			www/wslay

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--bindir=${PREFIX}/cyrus/bin \
			--libexec=${PREFIX}/cyrus/libexec \
			--sbindir=${PREFIX}/cyrus/sbin \
			--with-sasl=${LOCALBASE} \
			--with-cyrus-user=_cyrus \
			--with-syslogfacility=MAIL \
			--disable-gssapi \
			--enable-autocreate \
			--enable-calalarmd \
			--enable-http \
			--enable-idled \
			--enable-jmap \
			--enable-murder \
			--enable-replication \
			--enable-srs

# needed for jmap support
CONFIGURE_ARGS +=	--enable-xapian

.if ${FLAVOR:Mclamav}
WANTLIB += bz2 clamav json-c mspack util
LIB_DEPENDS +=		security/clamav
.else
CONFIGURE_ARGS +=	--without-clamav
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# --mandir is overriden by the ports infrastructure
FAKE_FLAGS=		mandir=${PREFIX}/cyrus/man

pre-configure:
# XXX cannot use a patch because ./tools/imapoptions.pl iterates over the file
# names and breaks with:
# foo.orig.port: name must match filename at ./tools/lib/Cyrus/IMAPOptions/Option.pm line 119.
	sed -i \
		-e "s,/usr/lib/sendmail,/usr/sbin/sendmail,g" \
		-e "s,/usr/sieve,/var/sieve,g" \
		${WRKSRC}/lib/imapoptions/{sendmail,sievedir}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/cyrus-imapd
	cp -R ${WRKSRC}/doc/[!examples]* ${PREFIX}/share/doc/cyrus-imapd
	cp -R ${WRKSRC}/doc/examples/* ${PREFIX}/share/examples/cyrus-imapd
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/cyrus-imapd
	cp -R ${WRKSRC}/tools ${PREFIX}/share/examples/cyrus-imapd/
	${INSTALL_DATA} ${FILESDIR}/imapd.conf \
		${PREFIX}/share/examples/cyrus-imapd/
	rm -r ${PREFIX}/libdata/perl5/${MACHINE_ARCH}-openbsd

.include <bsd.port.mk>
