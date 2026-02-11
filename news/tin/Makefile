COMMENT=	threaded NNTP- and spool-based UseNet newsreader

DISTNAME=	tin-${MAJORVERSION}.${PATCHLEVEL}
MAJORVERSION=	2.6
PATCHLEVEL=	4
CATEGORIES=	news

REVISION=	0

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

WANTLIB += c curses iconv icui18n icuuc idn2 intl pcre2-8 uriparser z

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.69

# --with-x does not affect the build, but let's be safe.
CONFIGURE_ARGS+=	--with-ispell=${LOCALBASE}/bin/ispell \
			--without-metamail \
			--without-pgp \
			--without-pgpk \
			--with-gpg=${LOCALBASE}/bin/gpg \
			--without-socks \
			--without-socks5 \
			--without-slrnface \
			--disable-gsasl \
			--with-screen=ncurses \
			--with-pcre2-config=${LOCALBASE}/bin/pcre2-config \
			--with-libdir=${PREFIX}/lib/news \
			--with-spooldir=${VARBASE}/spool/news \
			--enable-break-long-lines \
			--enable-ipv6 \
			--without-x
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS+=	devel/pcre2 \
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
