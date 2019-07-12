# $OpenBSD: Makefile,v 1.18 2019/07/12 20:46:56 sthen Exp $

COMMENT=	morphing engine

DISTNAME=	animorph-0.3
CATEGORIES=	graphics
REVISION =	5

SHARED_LIBS +=  animorph             1.0      # unknown

HOMEPAGE=	http://www.dedalo-3d.com/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

CONFIGURE_STYLE=gnu

pre-configure:
	sed -i 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	sed -i 's,doc/animorph,share/doc/animorph,g' \
		${WRKSRC}/Makefile.in

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
