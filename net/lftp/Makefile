# $OpenBSD: Makefile,v 1.117 2017/07/16 19:18:58 espie Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.7.7
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	https://lftp.tech/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses ereadline expat iconv idn intl m ssl
WANTLIB += ${COMPILER_LIBCXX} util z

# lftp needs add_history_time()
LIB_DEPENDS=	devel/libidn \
		devel/gettext \
		devel/readline>=6.1p2

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
