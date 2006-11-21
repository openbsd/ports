# $OpenBSD: Makefile,v 1.1.1.1 2006/11/21 18:38:09 ajacoutot Exp $

COMMENT=	"morphing engine"

DISTNAME=	animorph-0.2
SHARED_LIBS +=	animorph 0.0			# .0.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.dedalo-3d.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	perl -pi -e 's,doc/animorph,share/doc/animorph,g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
