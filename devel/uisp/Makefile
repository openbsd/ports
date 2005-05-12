# $OpenBSD: Makefile,v 1.2 2005/05/12 22:50:39 martin Exp $

COMMENT=	"AVR microcontroller hardware in-system programmer"

DISTNAME=	uisp-20050207
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/uisp/

MAINTAINER=	Martin Reindl <martin@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=		http://savannah.nongnu.org/download/uisp/

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		CXX="${CXX} ${CXXFLAGS}"

.include <bsd.port.mk>
