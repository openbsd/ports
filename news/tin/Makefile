# $OpenBSD: Makefile,v 1.23 2003/08/19 04:08:53 fgsch Exp $

COMMENT=	'threaded NNTP and spool based UseNet newsreader'

DISTNAME=	tin-1.6.1
CATEGORIES=	news

MASTER_SITES=	ftp://ftp.tin.org/pub/news/clients/tin/stable/ \
		ftp://ftp.funet.fi/pub/unix/news/tin-unoff/stable/ \
		ftp://ftp.akk.uni-karlsruhe.de/pub/news/clients/tin/stable/ \
		ftp://ftp.cuhk.edu.hk/pub/packages/news/tin/stable/ \
		ftp://ftp.sunet.se/pub/news/readers/tin/stable/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=     Federico G. Schwindt <fgsch@openbsd.org>

MODULES=	gettext

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-ispell=${LOCALBASE}/bin/ispell \
			--without-metamail \
			--without-pgp \
			--without-pgpk \
			--with-gpg=${LOCALBASE}/bin/gpg \
			--with-screen=ncurses \
			--enable-break-long-lines \
			--enable-ipv6
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	nntp_only
FLAVOR?=

.if ${FLAVOR:L:Mnntp_only}
CONFIGURE_ARGS+=	--enable-nntp-only
.else
CONFIGURE_ARGS+=	--with-libdir=${PREFIX}/lib/news \
			--with-spooldir=/var/news
.endif

ALL_TARGET=	build

NO_REGRESS=	Yes

FILES=		tin.defaults mime.types

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/tin
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/tin

.include <bsd.port.mk>
