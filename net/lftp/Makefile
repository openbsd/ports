# $OpenBSD: Makefile,v 1.112 2017/02/15 15:27:48 sthen Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.7.5
CATEGORIES=	net

HOMEPAGE=	https://lftp.tech/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses ereadline expat iconv idn intl m ssl
WANTLIB += stdc++ util z

USE_GROFF=	Yes

# lftp needs add_history_time()
LIB_DEPENDS=	devel/libidn \
		devel/readline>=6.1p2 \

MASTER_SITES=	http://ftp.st.ryukoku.ac.jp/pub/network/ftp/lftp/ \
		http://lftp.yar.ru/ftp/ \
		ftp://ftp.st.ryukoku.ac.jp/pub/network/ftp/lftp/

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
