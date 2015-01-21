# $OpenBSD: Makefile,v 1.8 2015/01/21 14:43:34 sthen Exp $

COMMENT=	Perl-based reverse proxy load balancer and web server

MODULES=	cpan
DISTNAME=	Perlbal-1.73
REVISION=	0
CATEGORIES=	www

CPAN_AUTHOR=    DORMANDO

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Danga-Socket \
		net/p5-Net-Netmask \
		www/p5-libwww \
		devel/p5-BSD-Resource
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	conf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/perlbal

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Perlbal
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/p5-Perlbal

# XXX IO::AIO not ported yet
# TEST_DEPENDS=

.include <bsd.port.mk>
