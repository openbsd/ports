# $OpenBSD: Makefile,v 1.20 2003/05/17 22:58:16 fgsch Exp $

COMMENT=	'full-screen easy to use Usenet reader'

DISTNAME=	tin-1.4.7
CATEGORIES=	news

MASTER_SITES=	ftp://ftp.tin.org/pub/news/clients/tin/stable/ \
		ftp://ftp.akk.uni-karlsruhe.de/pub/news/clients/tin/stable/ \
		ftp://ftp.nuxi.com/pub/tin/stable/ \
		ftp://uiarchive.uiuc.edu/pub/packages/news/client/tin/unoff/ \
		ftp://ftp.eee.hku.hk/pub/tin-unoff/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=     Federico G. Schwindt <fgsch@openbsd.org>

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

ALL_TARGET=	build

NO_REGRESS=	Yes

.include <bsd.port.mk>
