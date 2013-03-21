# $OpenBSD: Makefile,v 1.4 2013/03/21 08:46:32 ajacoutot Exp $

COMMENT=	hangul input library

DISTNAME=	libhangul-0.0.10

SHARED_LIBS=	hangul	0.1	# .1.0

CATEGORIES=	korean inputmethods

HOMEPAGE= 	http://kldp.net/projects/hangul/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv

MASTER_SITES=	http://kldp.net/frs/download.php/5417/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>
