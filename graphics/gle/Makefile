# $OpenBSD: Makefile,v 1.4 2002/12/29 20:08:46 fgsch Exp $

COMMENT=		"OpenGL Extrusion library"

VERSION=		3.0.4
DISTNAME=		gle-${VERSION}
CATEGORIES=     	graphics devel

HOMEPAGE=		http://www.linas.org/gle/

MAINTAINER=		David Lebel <lebel@openbsd.org>

LIB_DEPENDS=		glut.3::graphics/glut

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linas.org/gle/pub/

PATCH_LIST=    	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
	        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                patch-*

USE_X11=		Yes
SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lXi"

post-extract:
	@perl -i -p -e 's/3GLE/3/;' ${WRKSRC}/man/*.man

.include <bsd.port.mk>
