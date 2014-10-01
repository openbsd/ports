# $OpenBSD: Makefile,v 1.100 2014/10/01 15:25:59 sthen Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.5.5
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://lftp.yar.ru/

# GPLv3+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c crypto curses expat idn m ereadline ssl stdc++ util z

USE_GROFF=	Yes

# lftp needs add_history_time()
LIB_DEPENDS=	devel/libidn \
		devel/readline>=6.1p2 \

MASTER_SITES=	http://lftp.yar.ru/ftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared
# XXX hack to get rid of RAND_egd
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include \
		-DRAND_egd\(f\)=-1" LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

.include <bsd.port.mk>
