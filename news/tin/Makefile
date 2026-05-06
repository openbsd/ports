COMMENT=	threaded NNTP- and spool-based UseNet newsreader

DISTNAME=	tin-${MAJORVERSION}.${PATCHLEVEL}
MAJORVERSION=	2.6
PATCHLEVEL=	5
CATEGORIES=	news

# stable first will allow pprtroach to find updates for a new major version,
# v${MAJORVERSION} as a fallback allows fetching distfiles from an old stable
SITES=		https://sunsite.icm.edu.pl/pub/unix/news/tin/stable/ \
		https://sunsite.icm.edu.pl/pub/unix/news/tin/v${MAJORVERSION}/ \
		ftp://ftp.tin.org/pub/news/clients/tin/v${MAJORVERSION}/ \
		ftp://ftp.karlsruhe.org/pub/news/clients/tin/v${MAJORVERSION}/

HOMEPAGE=	http://www.tin.org/

# This software cannot be redistributed freely due to a few files having
# licenses that prohibit making money from redistribution - see src/nntplib.c,
# vms/vms.c
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curses iconv icui18n icuuc idn2 intl pcre2-8 
WANTLIB += tls uriparser z

CONFIGURE_STYLE=	gnu

# --with-x does not affect the build, but let's be safe.
CONFIGURE_ARGS=	--enable-break-long-lines \
		--enable-ipv6 \
		--with-gpg=${LOCALBASE}/bin/gpg \
		--disable-gsasl \
		--with-ispell=${LOCALBASE}/bin/ispell \
		--with-libdir=${PREFIX}/lib/news \
		--without-metamail \
		--with-nntps=libtls \
		--without-pgp \
		--without-pgpk \
		--with-pcre2-config=${LOCALBASE}/bin/pcre2-config \
		--without-socks \
		--without-socks5 \
		--without-slrnface \
		--with-screen=ncurses \
		--with-spooldir=${VARBASE}/spool/news \
		--without-x

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_header_uudeview_h=no \
		ac_cv_lib_uu_UUInitialize=yes \
		ac_cv_sys_long_file_names=yes

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/pcre2 \
		devel/gettext,-runtime \
		devel/libidn2 \
		textproc/icu4c \
		www/uriparser

ALL_TARGET=	build

NO_TEST=	Yes

FILES=		tin.defaults mime.types

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/tin
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/tin

.include <bsd.port.mk>
