# $OpenBSD: Makefile,v 1.1.1.1 2007/09/15 14:07:20 jolan Exp $

COMMENT=	perl module that provides a client interface to gpsd
MODULES=	cpan
DISTNAME=	Net-GPSD-0.35
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
	${INSTALL_SCRIPT} ${WRKSRC}/bin/*.pl \
		${PREFIX}/share/examples/p5-Net-GPSD
	${INSTALL_SCRIPT} ${WRKSRC}/doc/*.cgi \
		${PREFIX}/share/examples/p5-Net-GPSD
	${INSTALL_DATA} ${WRKSRC}/doc/*.db \
		${PREFIX}/share/examples/p5-Net-GPSD

.include <bsd.port.mk>
