# $OpenBSD: Makefile,v 1.7 2015/03/16 18:07:37 naddy Exp $

COMMENT=	intelligent phonetic input method library

DISTNAME=	libchewing-0.3.3
PKGNAME=	zh-${DISTNAME}
REVISION =	1

SHARED_LIBS=	chewing	0.0	# .3.1

CATEGORIES=	chinese inputmethods

HOMEPAGE= 	http://chewing.csie.net/

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://chewing.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
