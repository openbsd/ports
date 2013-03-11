# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:31 espie Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

DISTNAME=	uisp-20050207
REVISION =	0
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/uisp/

MAINTAINER=	Martin Reindl <martin@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++
USE_GROFF =		Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=uisp/}

CONFIGURE_STYLE=	gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV=          LIBS="-li386"
.endif
MAKE_FLAGS=		CXX="${CXX} ${CXXFLAGS}"

.include <bsd.port.mk>
