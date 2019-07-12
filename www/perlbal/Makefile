# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:00 sthen Exp $

COMMENT=	Perl-based reverse proxy load balancer and web server

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Perlbal-1.80
CATEGORIES=	www

CPAN_AUTHOR=    DORMANDO

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IO-AIO \
		net/p5-Danga-Socket \
		net/p5-Net-Netmask \
		www/p5-libwww \
		devel/p5-BSD-Resource

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	conf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/perlbal

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Perlbal
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/p5-Perlbal

.include <bsd.port.mk>
