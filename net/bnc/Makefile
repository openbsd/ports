# $OpenBSD: Makefile,v 1.5 2004/04/18 06:41:11 robert Exp $

COMMENT=	"simple IRC relay proxy with support for virtual hosting"

DISTNAME=	${PKGNAME:S,-,,}
PKGNAME=	bnc-2.8.6
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://gotbnc.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-patch:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/bncsetup > ${WRKSRC}/bncsetup.new
	@mv ${WRKSRC}/bncsetup.new ${WRKSRC}/bncsetup

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
