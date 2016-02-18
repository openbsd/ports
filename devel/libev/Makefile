# $OpenBSD: Makefile,v 1.18 2016/02/18 17:11:47 tobiasu Exp $

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

.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "sparc"
CFLAGS +=	-DEV_NO_SMP
.endif

.include <bsd.port.mk>
