# $OpenBSD: Makefile,v 1.55 2019/07/14 00:39:38 naddy Exp $

COMMENT=	threaded NNTP- and spool-based UseNet newsreader

DISTNAME=	tin-${MAJORVERSION}.${PATCHLEVEL}
MAJORVERSION=	2.4
PATCHLEVEL=	3
CATEGORIES=	news
REVISION=	0

MASTER_SITES=	ftp://ftp.tin.org/pub/news/clients/tin/stable/ \
		http://ftp.cuhk.edu.hk/pub/packages/news/tin/v${MAJORVERSION}/ \
		http://ftp.lip6.fr/pub/unix/news/readers/tin-unoff/ \
		ftp://ftp.karlsruhe.org:/pub/news/clients/tin/ \
		ftp://ftp.cuhk.edu.hk:/pub/packages/news/tin/ \
		ftp://sunsite.icm.edu.pl/pub/unix/news/tin/ \
		ftp://ftp.tin.org/pub/news/clients/tin/v${MAJORVERSION}/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# This software cannot be redistributed freely due to a few files having
# licenses that prohibit making money from redistribution - see src/nntplib.c,
# vms/vms.c
PERMIT_PACKAGE=	Yes

WANTLIB=		c>=58.2 iconv icuuc intl curses pcre

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.13

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
			--with-pcre=${LOCALBASE} \
			--with-libdir=${PREFIX}/lib/news \
			--with-spooldir=${VARBASE}/spool/news \
			--enable-break-long-lines \
			--enable-ipv6 \
			--without-x
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS+=	devel/pcre \
		devel/gettext,-runtime \
		textproc/icu4c

ALL_TARGET=	build

NO_TEST=	Yes

FILES=		tin.defaults mime.types

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/tin
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/tin

.include <bsd.port.mk>
