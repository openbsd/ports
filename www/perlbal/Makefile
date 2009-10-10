# $OpenBSD: Makefile,v 1.2 2009/10/10 07:50:02 ajacoutot Exp $

COMMENT=	Perl-based reverse proxy load balancer and web server

MODULES=	cpan
DISTNAME=	Perlbal-1.73
CATEGORIES=	www

CPAN_AUTHOR=    DORMANDO

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/p5-Danga-Socket \
		::net/p5-Net-Netmask \
		::www/p5-libwww \
		::devel/p5-BSD-Resource
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/perlbal

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Perlbal
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Perlbal
	${INSTALL_DATA} ${WRKSRC}/conf/* ${PREFIX}/share/examples/p5-Perlbal
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/p5-Perlbal

# XXX IO::AIO not ported yet
# REGRESS_DEPENDS=

.include <bsd.port.mk>
