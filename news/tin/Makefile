# $OpenBSD: Makefile,v 1.13 2000/07/02 11:05:46 fgsch Exp $

DISTNAME=	tin-1.4.3
CATEGORIES=	news
NEED_VERSION=	1.311
MASTER_SITES=	ftp://ftp.tin.org/pub/news/clients/tin/stable/ \
		ftp://ftp.aak.uni-karlsruhe.de/pub/news/clients/tin/stable/ \
		ftp://ftp.nuxi.com/pub/tin/stable/ \
		ftp://uiarchive.uiuc.edu/pub/packages/news/client/tin/unoff/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-spooldir=/var/news  \
			--with-libdir=${PREFIX}/lib/news \
			--enable-break-long-lines

FLAVORS=	nntp_only
FLAVOR?=

.if ${FLAVOR:L} == "nntp_only"
CONFIGURE_ARGS+=	--enable-nntp-only
.endif

MAKE_FILE=		makefile
ALL_TARGET=		build

.include <bsd.port.mk>
