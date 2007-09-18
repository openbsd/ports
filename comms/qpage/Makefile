# $OpenBSD: Makefile,v 1.20 2007/09/18 09:22:31 sthen Exp $

COMMENT=	SNPP client/server (alphanum pager software)

DISTNAME=	qpage-3.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	comms

# custom; see LICENSE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.qpage.org/download/
EXTRACT_SUFX=	.tar.Z
CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' ${WRKSRC}/qpage.man

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/qpage ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/qpage.man \
			${PREFIX}/man/man1/qpage.1
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qpage
		${INSTALL_DATA} ${WRKSRC}/example.cf \
			${PREFIX}/share/examples/qpage/qpage.cf
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qpage
		${INSTALL_DATA} ${WRKSRC}/{[C-LRT]*,*txt} \
			${PREFIX}/share/doc/qpage

.include <bsd.port.mk>
