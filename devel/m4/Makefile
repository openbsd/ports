# $OpenBSD: Makefile,v 1.31 2013/11/09 23:19:03 naddy Exp $

COMMENT=	GNU m4

DISTNAME=	m4-1.4.16
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=m4/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/m4/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c sigsegv

LIB_DEPENDS=	devel/libsigsegv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
