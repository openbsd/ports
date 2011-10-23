# $OpenBSD: Makefile,v 1.5 2011/10/23 11:05:53 ajacoutot Exp $

COMMENT=	morphing engine

DISTNAME=	animorph-0.3
CATEGORIES=	graphics

SHARED_LIBS +=  animorph             1.0      # unknown

HOMEPAGE=	http://www.dedalo-3d.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	perl -pi -e 's,doc/animorph,share/doc/animorph,g' \
		${WRKSRC}/Makefile.in

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
