# $OpenBSD: Makefile,v 1.35 2019/07/16 21:29:41 sthen Exp $

COMMENT=	GNU m4

DISTNAME=	m4-1.4.18
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=m4/}
EXTRACT_SUFX=	.tar.xz
REVISION=	0

HOMEPAGE=	https://www.gnu.org/software/m4/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c sigsegv

LIB_DEPENDS=	devel/libsigsegv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
