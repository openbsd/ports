# $OpenBSD: Makefile,v 1.93 2013/05/29 14:08:06 jasper Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.4.5
CATEGORIES=	net

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c crypto curses expat m ereadline ssl stdc++ util

LIB_DEPENDS=	devel/readline>=6.1p2

MASTER_SITES=	http://ftp.yars.free.net/pub/source/lftp/ \
		http://ftp.yars.free.net/pub/source/lftp/old/ \
		ftp://ftp.yars.free.net/pub/source/lftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

.include <bsd.port.mk>
