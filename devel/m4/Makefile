# $OpenBSD: Makefile,v 1.24 2009/04/26 19:45:53 sthen Exp $
# $FreeBSD: Makefile,v 1.7 1997/06/16 08:22:35 max Exp $

COMMENT=	GNU m4

DISTNAME=	m4-1.4.13
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=m4/}

HOMEPAGE=	http://www.gnu.org/software/m4/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

LIB_DEPENDS=	sigsegv::devel/libsigsegv

CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS=	--program-prefix="g"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
