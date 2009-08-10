# $OpenBSD: Makefile,v 1.13 2009/08/10 06:31:44 kili Exp $

COMMENT=		OpenGL Extrusion library

VERSION=		3.0.4
DISTNAME=		gle-${VERSION}
PKGNAME=		${DISTNAME}p3
SHARED_LIBS=		gle	3.4
CATEGORIES=     	graphics devel

HOMEPAGE=		http://www.linas.org/gle/

# Artistic/custom
PERMIT_PACKAGE_CDROM=	unclear
PERMIT_PACKAGE_FTP=	unclear
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xi m pthread-stubs xcb

MASTER_SITES=		http://www.linas.org/gle/pub/

USE_LIBTOOL=		Yes
USE_X11=		Yes
SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lXi"

post-extract:
	@perl -i -p -e 's/3GLE/3/;' ${WRKSRC}/man/*.man

.include <bsd.port.mk>
