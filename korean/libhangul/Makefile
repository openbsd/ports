# $OpenBSD: Makefile,v 1.7 2016/03/11 19:59:15 naddy Exp $

COMMENT=	hangul input library

DISTNAME=	libhangul-0.0.10
REVISION =	1

SHARED_LIBS=	hangul	0.1	# .1.0

CATEGORIES=	korean inputmethods

HOMEPAGE= 	http://kldp.net/projects/hangul/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv

MASTER_SITES=	http://kldp.net/frs/download.php/5417/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>
