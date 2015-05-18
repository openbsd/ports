# $OpenBSD: Makefile,v 1.6 2015/05/18 06:56:04 jasper Exp $

COMMENT=	tetrinet server

DISTNAME=	tetrinetx-1.13.16+qirc-1.40c
PKGNAME=	tetrinetx-1.13.16
CATEGORIES=	games

HOMEPAGE=	http://tetrinetx.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tetrinetx/}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c adns

LIB_DEPENDS=	net/adns

WRKSRC=		${WRKDIST}/src

NO_TEST=	Yes

FLAVORS=	ipv6
FLAVOR?=

.if ${FLAVOR:Mipv6}
CFLAGS+=	-DUSE_IPV6
.endif

CFLAGS+=	-fno-strength-reduce -DCONFDIR="\"${SYSCONFDIR}/tetrinetx\""

post-patch:
	rm ${WRKDIST}/bin/game.*.orig

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${LOCALBASE}/include \
	    main.c -o tetrinetx -L${LOCALBASE}/lib -ladns

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/tetrinetx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tetrinetx
	@${INSTALL_DATA} ${WRKDIST}/README* ${PREFIX}/share/doc/tetrinetx
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tetrinetx
	@${INSTALL_DATA} ${WRKDIST}/bin/game.* ${PREFIX}/share/examples/tetrinetx

.include <bsd.port.mk>
