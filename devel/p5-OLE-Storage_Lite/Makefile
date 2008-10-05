# $OpenBSD: Makefile,v 1.4 2008/10/05 21:15:25 jasper Exp $

COMMENT=	simple class for OLE document interface

MODULES=	cpan
DISTNAME=       OLE-Storage_Lite-0.17
CATEGORIES=	devel perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-OLE-Storage_Lite
	${INSTALL_DATA} ${WRKSRC}/sample/* \
		${PREFIX}/share/examples/p5-OLE-Storage_Lite

.include <bsd.port.mk>
