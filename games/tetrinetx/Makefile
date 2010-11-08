# $OpenBSD: Makefile,v 1.2 2010/11/08 18:14:21 espie Exp $

COMMENT=	tetrinet server

DISTNAME=	tetrinetx-1.13.16+qirc-1.40c
PKGNAME=	tetrinetx-1.13.16
CATEGORIES=	games

HOMEPAGE=	http://tetrinetx.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tetrinetx/}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c adns

LIB_DEPENDS=	::net/adns

WRKSRC=		${WRKDIST}/src

NO_REGRESS=	Yes

FLAVORS=	ipv6
FLAVOR?=

.if ${FLAVOR:L:Mipv6}
CFLAGS+=	-DUSE_IPV6
.endif

CFLAGS+=	-fno-strength-reduce -DCONFDIR="\"${SYSCONFDIR}/tetrinetx\""

post-patch:
	@rm -f ${WRKDIST}/bin/game.*.orig

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
