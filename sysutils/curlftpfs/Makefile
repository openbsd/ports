COMMENT=	FUSE FTP driver

DISTNAME=	curlftpfs-0.9.2
CATEGORIES=	sysutils
REVISION=	5

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curl fuse glib-2.0 iconv intl nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl pcre2-8 pthread ssl z

SITES=		${SITE_SOURCEFORGE:=curlftpfs/}

LIB_DEPENDS=	devel/glib2 net/curl

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
