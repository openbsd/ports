# $OpenBSD: Makefile,v 1.96 2014/03/24 09:08:46 espie Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.4.10
CATEGORIES=	net

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c crypto curses expat m ereadline ssl stdc++ util z

# lftp needs add_history_time()
LIB_DEPENDS=	devel/readline>=6.1p2

MASTER_SITES=	http://lftp.yar.ru/ftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

.include <bsd.port.mk>
