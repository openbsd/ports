# $OpenBSD: Makefile,v 1.21 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT=		OpenGL Extrusion library

DISTNAME=		gle-3.1.0
CATEGORIES=     	graphics devel

SHARED_LIBS +=  gle                  4.0      # 4.0

HOMEPAGE=		http://www.linas.org/gle/

# Artistic/IBM standard example source code or GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=project/gle/gle/${DISTNAME}/}

BUILD_DEPENDS=		graphics/freeglut

SEPARATE_BUILD= 	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-extract:
	perl -pi -e 's/3GLE/3/;' ${WRKSRC}/man/*.man
	perl -pi -e 's,3gle,3,g' ${WRKSRC}/man/Makefile.in

.include <bsd.port.mk>
