# $OpenBSD: Makefile,v 1.26 2016/04/27 18:17:19 jasper Exp $

COMMENT=	tools and library routines for working with GIF images

DISTNAME=	giflib-5.1.4
SHARED_LIBS +=	gif                  7.0      # 7.0
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=giflib/}

HOMEPAGE=	http://giflib.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

CONFIGURE_STYLE=	gnu

TEST_DEPENDS=	sysutils/coreutils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/giflib
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/giflib
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
