# $OpenBSD: Makefile,v 1.2 1999/10/02 00:10:11 brad Exp $
# Original from: mah@everybody.org

BROKEN=		"Sources no longer available"

DISTNAME=	libIDL-0.6.3
CATEGORIES=	devel
MASTER_SITES=	http://www.rpi.edu/~veliaa/libIDL/

MAINTAINER=	mah@everybody.org

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib

USE_AUTOCONF=	yes

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
