# $OpenBSD: Makefile,v 1.11 2006/02/08 04:54:49 david Exp $

COMMENT=	"simple IRC relay proxy with support for virtual hosting"

DISTNAME=	${PKGNAME:S,-,,}
PKGNAME=	bnc-2.9.4
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://gotbnc.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

RUN_DEPENDS=		:dialog-*:misc/dialog
CONFIGURE_STYLE=	gnu

pre-configure:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/bncsetup > ${WRKSRC}/bncsetup.new
	@mv ${WRKSRC}/bncsetup.new ${WRKSRC}/bncsetup

ALL_TARGET=	ALL
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bnc
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} bnc mkpasswd ${PREFIX}/bin
	cd ${WRKBUILD}; ${INSTALL_SCRIPT} bncchk bncsetup ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bnc
	${INSTALL_DATA} ${WRKSRC}/example.conf \
		${PREFIX}/share/examples/bnc/bnc.conf.sample

.include <bsd.port.mk>
