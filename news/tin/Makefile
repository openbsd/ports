# $OpenBSD: Makefile,v 1.44 2014/04/29 16:41:36 giovanni Exp $

COMMENT=	threaded NNTP- and spool-based UseNet newsreader

DISTNAME=	tin-${MAJORVERSION}.${PATCHLEVEL}
MAJORVERSION=	2.2
PATCHLEVEL=	0
CATEGORIES=	news

MASTER_SITES=	http://ftp.funet.fi/pub/unix/news/tin-unoff/ \
		http://ftp.sunet.se/pub/news/readers/tin/v${MAJORVERSION}/ \
		http://ftp.cuhk.edu.hk/pub/packages/news/tin/v${MAJORVERSION}/ \
		ftp://ftp.tin.org/pub/news/clients/tin/v${MAJORVERSION}/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

MODULES=	devel/gettext

# This software cannot be redistributed freely due to a few files having
# licenses that prohibit making money from redistribution - see src/nntplib.c,
# vms/vms.c
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c>=58.2 icuuc ncurses pcre pthread

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
			--with-spooldir=/var/spool/news \
			--enable-break-long-lines \
			--enable-ipv6 \
			--without-x
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS+=	devel/pcre \
		textproc/icu4c

ALL_TARGET=	build

USE_GROFF =	Yes
NO_TEST=	Yes

FILES=		tin.defaults mime.types

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/tin
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/tin

.include <bsd.port.mk>
