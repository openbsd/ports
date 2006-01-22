# $OpenBSD: Makefile,v 1.12 2006/01/22 18:40:36 jolan Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/04/10 01:14:01 jtk Exp $

COMMENT=	'PPTP client package for Microsoft VPN servers'

DISTNAME=	pptp-1.6.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pptpclient/}

HOMEPAGE=	http://pptpclient.sf.net

MAINTAINER=	Benoit LECOCQ <blq@arcane-labs.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c util

NO_REGRESS=	Yes

MAKE_ENV+=	PPPD=/usr/sbin/ppp
CFLAGS+=	-DUSER_PPP

DIRS=	Documentation Reference

post-patch:
	@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, < \
		${FILESDIR}/pptp_8 > pptp.8
	@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, < \
		${FILESDIR}/pptp_reconnect > pptp-reconnect

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pptp ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/pptp-reconnect ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pptp.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pptp
	${INSTALL_DATA} ${WRKSRC}/USING ${PREFIX}/share/doc/pptp/
	@cd ${WRKSRC} && \
	    tar cf - ${DIRS} | (cd ${PREFIX}/share/doc/pptp && tar -xf -)

.include <bsd.port.mk>
