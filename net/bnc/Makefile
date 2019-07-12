# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:23 sthen Exp $

COMMENT=	simple IRC relay proxy with support for virtual hosting

DISTNAME=	${PKGNAME:S,-,,}
PKGNAME=	bnc-2.9.4
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://gotbnc.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE=	Yes
WANTLIB=		c

RUN_DEPENDS=		misc/dialog
CONFIGURE_STYLE=	gnu

pre-configure:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/bncsetup > ${WRKSRC}/bncsetup.new
	@mv ${WRKSRC}/bncsetup.new ${WRKSRC}/bncsetup

ALL_TARGET=	ALL
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bnc
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} bnc mkpasswd ${PREFIX}/bin
	cd ${WRKBUILD}; ${INSTALL_SCRIPT} bncchk bncsetup ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bnc
	${INSTALL_DATA} ${WRKSRC}/example.conf \
		${PREFIX}/share/examples/bnc/bnc.conf.sample

.include <bsd.port.mk>
