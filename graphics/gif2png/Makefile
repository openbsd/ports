# $OpenBSD: Makefile,v 1.3 1999/10/29 03:11:18 brad Exp $

DISTNAME=	gif2png-1.2.1
CATEGORIES=	graphics
MASTER_SITES=	http://www.tuxedo.org/~esr/gif2png/ \
		ftp://ftp.ccil.org/pub/esr/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
