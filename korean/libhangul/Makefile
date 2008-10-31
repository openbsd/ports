# $OpenBSD: Makefile,v 1.1.1.1 2008/10/31 01:39:09 kevlo Exp $

COMMENT=	hangul input library

DISTNAME=	libhangul-0.0.8

SHARED_LIBS=	hangul	0.0	# .1.0

CATEGORIES=	korean inputmethods

HOMEPAGE= 	http://kldp.net/projects/hangul/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MODULES=	converters/libiconv

MASTER_SITES=	http://kldp.net/frs/download.php/4618/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>
