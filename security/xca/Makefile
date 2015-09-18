# $OpenBSD: Makefile,v 1.9 2015/09/18 15:07:48 sthen Exp $

COMMENT=	create and manage certificates, CSRs, keys, etc

DISTNAME=	xca-1.3.1
REVISION=	0
CATEGORIES=	security x11

HOMEPAGE=	http://xca.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtGui c crypto ltdl m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xca/}

MODULES=	x11/qt4

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
# yuk, but it does the trick.
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_ENV=	destdir=${WRKINST}

LIB_DEPENDS=	devel/libtool,-ltdl
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

NO_TEST=	Yes

.include <bsd.port.mk>
