# $OpenBSD: Makefile,v 1.1.1.1 2013/12/17 15:39:42 jasper Exp $

COMMENT=	FUSE FTP driver

DISTNAME=	curlftpfs-0.9.2
CATEGORIES=	sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=curlftpfs/}

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2 net/curl

WANTLIB += c crypto curl fuse glib-2.0 idn pcre pthread ssl z

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
