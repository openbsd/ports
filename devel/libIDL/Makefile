# $OpenBSD: Makefile,v 1.1.1.1 1999/09/15 02:13:39 turan Exp $
# Original from: mah@everybody.org

DISTNAME=		libIDL-0.6.3
CATEGORIES=     	devel

MAINTAINER=		mah@everybody.org

MASTER_SITES=		http://www.rpi.edu/~veliaa/libIDL/

LIB_DEPENDS=		glib.1.2:${PORTSDIR}/devel/glib

GNU_CONFIGURE=		yes (assumed if USE_AUTOCONF is yes)
USE_AUTOCONF=		yes

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
