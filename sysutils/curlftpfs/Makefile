# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:41 sthen Exp $

COMMENT=	FUSE FTP driver

DISTNAME=	curlftpfs-0.9.2
CATEGORIES=	sysutils
REVISION=	2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curl fuse glib-2.0 iconv intl nghttp2 pcre pthread
WANTLIB += ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=curlftpfs/}

LIB_DEPENDS=	devel/glib2 net/curl

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
