# $OpenBSD: Makefile,v 1.5 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT=	intelligent phonetic input method library

DISTNAME=	libchewing-0.3.3
PKGNAME=	zh-${DISTNAME}

SHARED_LIBS=	chewing	0.0	# .3.1

CATEGORIES=	chinese inputmethods

HOMEPAGE= 	http://chewing.csie.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://chewing.csie.net/download/libchewing/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
