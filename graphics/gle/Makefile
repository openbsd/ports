# $OpenBSD: Makefile,v 1.1.1.1 2001/06/20 18:57:28 lebel Exp $

COMMENT=		"OpenGL Extrusion library"

VERSION=		3.0.4
DISTNAME=		gle-${VERSION}
CATEGORIES=     	graphics devel
NEED_VERSION=		1.402

HOMEPAGE=		http://www.linas.org/gle/

MAINTAINER=		David Lebel <lebel@openbsd.org>

LIB_DEPENDS=		glut.3::graphics/glut

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linas.org/gle/pub/

USE_X11=		Yes
SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@perl -i -p -e 's/3GLE/3/;' ${WRKSRC}/man/*.man

.include <bsd.port.mk>
