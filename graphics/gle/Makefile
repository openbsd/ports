# $OpenBSD: Makefile,v 1.26 2019/07/12 20:46:59 sthen Exp $

COMMENT=		OpenGL Extrusion library

DISTNAME=		gle-3.1.0
REVISION=		1
CATEGORIES=     	graphics devel

SHARED_LIBS +=  gle                  4.0      # 4.0

HOMEPAGE=		http://www.linas.org/gle/

# Artistic/IBM standard example source code or GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=project/gle/gle/${DISTNAME}/}

BUILD_DEPENDS=		graphics/freeglut

SEPARATE_BUILD= 	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	sed -i 's/3GLE/3/;' ${WRKSRC}/man/*.man
	sed -i 's,3gle,3,g' ${WRKSRC}/man/Makefile.in

.include <bsd.port.mk>
