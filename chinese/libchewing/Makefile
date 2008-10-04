# $OpenBSD: Makefile,v 1.1.1.1 2008/10/04 09:16:11 kevlo Exp $

COMMENT=	intelligent phonetic input method library

DISTNAME=	libchewing-0.3.1
PKGNAME=	zh-${DISTNAME}

SHARED_LIBS=	chewing	0.0	# .3.1

CATEGORIES=	chinese inputmethods

HOMEPAGE= 	http://chewing.csie.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://chewing.csie.net/download/libchewing/
EXTRACT_SUFX=	.tar.bz2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
