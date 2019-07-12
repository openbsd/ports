# $OpenBSD: Makefile,v 1.126 2019/07/12 20:48:30 sthen Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.8.4
CATEGORIES=	net
REVISION=	2

HOMEPAGE=	https://lftp.tech/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto curses ereadline expat
WANTLIB += iconv idn2 intl m ssl unistring util z

COMPILER =		base-clang ports-gcc base-gcc

# lftp needs add_history_time()
LIB_DEPENDS=	devel/libidn2 \
		devel/gettext,-runtime \
		devel/readline>=6.1p2

MASTER_SITES=	http://lftp.yar.ru/ftp/ \
		ftp://ftp.st.ryukoku.ac.jp/pub/network/ftp/lftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

post-install:
	rm -rf ${PREFIX}/lib/liblftp-{jobs,tasks}.{a,la} \
		${PREFIX}/share/{icons,applications}

.include <bsd.port.mk>
