# $OpenBSD: Makefile,v 1.1.1.1 2019/06/02 06:19:38 otto Exp $

COMMENT=	C implementation of the Frame Streams protocol

DISTNAME=	fstrm-0.5.0
CATEGORIES=	net devel

SHARED_LIBS +=  fstrm                0.0

HOMEPAGE=	https://github.com/farsightsec/fstrm

MAINTAINER=	Otto Moerbeek <otto@drijf.net>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c event_core event_extra pthread

MASTER_SITES=	https://dl.farsightsecurity.com/dist/fstrm/

LIB_DEPENDS=	devel/libevent2

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes

.include <bsd.port.mk>
