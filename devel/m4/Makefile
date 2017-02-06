# $OpenBSD: Makefile,v 1.33 2017/02/06 08:14:09 jca Exp $

COMMENT=	GNU m4

DISTNAME=	m4-1.4.18
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=m4/}
EXTRACT_SUFX=	.tar.xz

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
