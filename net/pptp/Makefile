# $OpenBSD: Makefile,v 1.8 2003/01/24 13:12:38 reinhard Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/04/10 01:14:01 jtk Exp $

COMMENT=	'PPTP client package for Microsoft VPN servers'

DISTNAME=	pptp-linux-1.1.0-1
PKGNAME=	pptp-1.1.0
CATEGORIES=	net
MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pptpclient/}

HOMEPAGE=	http://pptpclient.sf.net

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKSRC=		${WRKDIST}/pptp-linux-1.1.0
REGRESS_TARGET=	vector_test

DIRS=	Documentation Reference

post-patch:
	@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, < \
	    ${FILESDIR}/pptp_8 > pptp.8
	@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, < \
	    ${FILESDIR}/pptp_reconnect > pptp-reconnect

post-extract:
	@cd ${WRKDIST} && tar xzf pptp-linux-1.1.0.tar.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pptp ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/pptp-reconnect ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pptp.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pptp
	${INSTALL_DATA} ${WRKSRC}/USING ${PREFIX}/share/doc/pptp/
	@cd ${WRKSRC} && \
	    tar cf - ${DIRS} | (cd ${PREFIX}/share/doc/pptp && tar -xf -)

.include <bsd.port.mk>
