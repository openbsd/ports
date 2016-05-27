# $OpenBSD: Makefile,v 1.109 2016/05/27 12:08:46 jca Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.7.2
CATEGORIES=	net

HOMEPAGE=	https://lftp.yar.ru/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses ereadline expat iconv idn intl m ssl
WANTLIB += stdc++ util z

USE_GROFF=	Yes

# lftp needs add_history_time()
LIB_DEPENDS=	devel/libidn \
		devel/readline>=6.1p2 \

MASTER_SITES=	https://lftp.yar.ru/ftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

post-install:
	rm -f ${PREFIX}/lib/liblftp-{jobs,tasks}.{a,la}

.include <bsd.port.mk>
