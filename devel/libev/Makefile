# $OpenBSD: Makefile,v 1.19 2016/09/01 10:53:26 jasper Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-4.22
CATEGORIES =	devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

SHARED_LIBS=	ev 3.1 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

CONFIGURE_STYLE =	gnu

.if ${MACHINE_ARCH} == "arm"
CFLAGS +=	-DEV_NO_SMP
.endif

.include <bsd.port.mk>
