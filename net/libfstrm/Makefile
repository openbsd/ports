# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:30 sthen Exp $

COMMENT=	C implementation of the Frame Streams protocol

DISTNAME=	fstrm-0.5.0
CATEGORIES=	net devel

SHARED_LIBS +=  fstrm                0.0

HOMEPAGE=	https://github.com/farsightsec/fstrm

MAINTAINER=	Otto Moerbeek <otto@drijf.net>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c event_core event_extra pthread

MASTER_SITES=	https://dl.farsightsecurity.com/dist/fstrm/

LIB_DEPENDS=	devel/libevent2

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes

.include <bsd.port.mk>
