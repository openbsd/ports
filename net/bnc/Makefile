# $OpenBSD: Makefile,v 1.1.1.1 2001/02/27 17:29:46 brad Exp $

DISTNAME=	bnc2.8.4
PKGNAME=	bnc-2.8.4
CATEGORIES=	net
MASTER_SITES=	http://gotbnc.com/files/

HOMEPAGE=	http://gotbnc.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-patch:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/bncsetup > ${WRKSRC}/bncsetup.new
	@mv ${WRKSRC}/bncsetup.new ${WRKSRC}/bncsetup

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bnc
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} bnc mkpasswd ${PREFIX}/bin
	cd ${WRKBUILD}; ${INSTALL_SCRIPT} bncchk bncsetup ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bnc
	${INSTALL_DATA} ${WRKSRC}/example.conf \
		${PREFIX}/share/examples/bnc/bnc.conf.sample

.include <bsd.port.mk>
