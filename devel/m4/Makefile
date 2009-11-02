# $OpenBSD: Makefile,v 1.25 2009/11/02 18:11:56 naddy Exp $

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
MAKE_ENV=	V=1	# disable silent rules

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
