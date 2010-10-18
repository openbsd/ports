# $OpenBSD: Makefile,v 1.35 2010/10/18 21:25:08 espie Exp $

COMMENT=	threaded NNTP- and spool-based UseNet newsreader

DISTNAME=	tin-${MAJORVERSION}.${PATCHLEVEL}
REVISION=	1
MAJORVERSION=	1.8
PATCHLEVEL=	3
CATEGORIES=	news

MASTER_SITES=	ftp://ftp.tin.org/pub/news/clients/tin/v${MAJORVERSION}/ \
		ftp://ftp.akk.uni-karlsruhe.de/pub/news/clients/tin/v${MAJORVERSION}/ \
		ftp://ftp.cuhk.edu.hk/pub/packages/news/tin/v${MAJORVERSION}/ \
		ftp://ftp.sunet.se/pub/news/readers/tin/v${MAJORVERSION}/ \
		ftp://ftp.funet.fi/pub/unix/news/tin-unoff/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=	Joachim Schipper <joachim@joachimschipper.nl>

MODULES=	devel/gettext

# This software cannot be redistributed freely due to a few files having
# licenses that prohibit making money from redistribution - see src/nntplib.c,
# vms/vms.c
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses pcre utf8 idn icuuc

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.13
# --with-x does not affect the build, but let's be safe.
CONFIGURE_ARGS+=	--with-ispell=${LOCALBASE}/bin/ispell \
			--without-metamail \
			--without-pgp \
			--without-pgpk \
			--with-gpg=${LOCALBASE}/bin/gpg \
			--with-screen=ncurses \
			--with-pcre=${LOCALBASE} \
			--with-libdir=${PREFIX}/lib/news \
			--with-spooldir=/var/spool/news \
			--enable-break-long-lines \
			--enable-ipv6 \
			--without-x
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS+=	::devel/pcre \
		::misc/libutf8 \
		::devel/libidn \
		::textproc/icu4c

ALL_TARGET=	build

USE_GROFF =	Yes
NO_REGRESS=	Yes

FILES=		tin.defaults mime.types

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/tin
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/tin

.include <bsd.port.mk>
