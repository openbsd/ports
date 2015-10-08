# $OpenBSD: Makefile,v 1.10 2015/10/08 12:02:03 jasper Exp $

COMMENT=	morphing engine

DISTNAME=	animorph-0.3
CATEGORIES=	graphics
REVISION=	1

SHARED_LIBS +=  animorph             1.0      # unknown

HOMEPAGE=	http://www.dedalo-3d.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	sed -i 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	sed -i 's,doc/animorph,share/doc/animorph,g' \
		${WRKSRC}/Makefile.in

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
