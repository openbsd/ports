# $OpenBSD: Makefile,v 1.1.1.1 2008/04/05 04:13:44 okan Exp $

COMMENT=	process aviation weather reports in the METAR format
MODULES=	cpan
DISTNAME=	Geo-METAR-1.15
CATEGORIES=	geo

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Geo-METAR
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Geo-METAR

.include <bsd.port.mk>
