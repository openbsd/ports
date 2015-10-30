# $OpenBSD: Makefile,v 1.2 2015/10/30 12:59:16 sthen Exp $

COMMENT=	FUSE FTP driver

DISTNAME=	curlftpfs-0.9.2
CATEGORIES=	sysutils
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=curlftpfs/}

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2 net/curl

WANTLIB += c crypto curl fuse glib-2.0 idn nghttp2 pcre pthread ssl z

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
