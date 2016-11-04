# $OpenBSD: Makefile,v 1.3 2016/11/04 11:35:20 sthen Exp $

COMMENT=	FUSE FTP driver

DISTNAME=	curlftpfs-0.9.2
CATEGORIES=	sysutils
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl fuse glib-2.0 nghttp2 pcre pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=curlftpfs/}

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2 net/curl

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
