# $OpenBSD: Makefile,v 1.108 2015/12/11 18:27:18 sthen Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.6.5
CATEGORIES=	net

HOMEPAGE=	http://lftp.yar.ru/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

post-install:
	rm -f ${PREFIX}/lib/liblftp-{jobs,tasks}.{a,la}

.include <bsd.port.mk>
