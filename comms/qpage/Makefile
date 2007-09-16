# $OpenBSD: Makefile,v 1.19 2007/09/16 01:37:10 merdely Exp $

COMMENT=	SNPP client/server (alphanum pager software)

DISTNAME=	qpage-3.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	license only grants use
PERMIT_PACKAGE_FTP=	license only grants use
PERMIT_DISTFILES_CDROM=	license only grants use
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

.include <bsd.port.mk>
