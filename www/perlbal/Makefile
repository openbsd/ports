# $OpenBSD: Makefile,v 1.5 2010/11/22 08:36:52 espie Exp $

COMMENT=	Perl-based reverse proxy load balancer and web server

MODULES=	cpan
DISTNAME=	Perlbal-1.73
CATEGORIES=	www
USE_GROFF =	Yes

CPAN_AUTHOR=    DORMANDO

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
# REGRESS_DEPENDS=

.include <bsd.port.mk>
