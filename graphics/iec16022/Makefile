# $OpenBSD: Makefile,v 1.1.1.1 2013/10/29 09:26:29 ajacoutot Exp $

COMMENT=	2D barcodes / DataMatrix creation tool

DISTNAME=	iec16022-0.2.4

SHARED_LIBS +=  iec16022                  0.0 # 0.0

CATEGORIES=	graphics

HOMEPAGE=	http://datenfreihafen.org/projects/iec16022.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c popt z

MASTER_SITES=	http://datenfreihafen.org/~stefan/iec16022/

MODULES=	devel/gettext

LIB_DEPENDS=	devel/popt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-test:
	perl -pi -e 's,/bin/bash,/bin/sh,g' ${WRKSRC}/test/testsuite.sh

.include <bsd.port.mk>
