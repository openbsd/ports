# $OpenBSD: Makefile,v 1.2 2008/10/08 17:15:49 jasper Exp $

COMMENT=	perl module that provides a client interface to gpsd
MODULES=	cpan
DISTNAME=	Net-GPSD-0.36
CATEGORIES=	net

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::geo/p5-GPS-PRN \
		::geo/p5-Geo-Forward \
		::geo/p5-Geo-Functions \
		::geo/p5-Geo-Inverse \
		::www/p5-libwww

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Net-GPSD
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* \
		${PREFIX}/share/examples/p5-Net-GPSD
	${INSTALL_SCRIPT} ${WRKSRC}/doc/*.cgi \
		${PREFIX}/share/examples/p5-Net-GPSD
	${INSTALL_DATA} ${WRKSRC}/doc/*.db \
		${PREFIX}/share/examples/p5-Net-GPSD

.include <bsd.port.mk>
