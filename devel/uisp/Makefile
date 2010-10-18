# $OpenBSD: Makefile,v 1.6 2010/10/18 17:48:13 espie Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

DISTNAME=	uisp-20050207
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/uisp/

MAINTAINER=	Martin Reindl <martin@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++
USE_GROFF =	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=uisp/}

CONFIGURE_STYLE=	gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV=          LIBS="-li386"
.endif
MAKE_FLAGS=		CXX="${CXX} ${CXXFLAGS}"

.include <bsd.port.mk>
