# $OpenBSD: Makefile,v 1.7 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT=	japanese handwriting recognition library

DISTNAME=	tomoe-0.2.1
REVISION=	0

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=tomoe/16048/}

CATEGORIES=	inputmethods japanese

SHARED_LIBS=	tomoe 0.0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
WANTLIB=	c m

.include <bsd.port.mk>
