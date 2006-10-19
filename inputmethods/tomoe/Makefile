# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 00:29:47 espie Exp $
COMMENT=	'japanese handwriting recognition library'

DISTNAME=	tomoe-0.2.1

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	http://dl.sourceforge.jp/tomoe/16048/

CATEGORIES=	japanese inputmethods

SHARED_LIBS=	tomoe 0.0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes
WANTLIB=	c m

.include <bsd.port.mk>
