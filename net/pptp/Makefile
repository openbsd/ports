# $OpenBSD: Makefile,v 1.1.1.1 2000/12/21 14:02:52 reinhard Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/04/10 01:14:01 jtk Exp $

DISTNAME=	pptp-linux-1.0.2
PKGNAME=	pptp-1.0.2
NEED_VERSION=	1.340
CATEGORIES=	net
MASTER_SITES= 	http://cag.lcs.mit.edu/~cananian/Synaptics/release/

HOMEPAGE=	http://cag.pdos.lcs.mit.edu/~cananian/Projects/PPTP/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes 
PERMIT_PACKAGE_FTP=     Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=   Yes

post-patch:
		@cp files/pptp_8 files/pptp_reconnect ${WRKSRC}
		@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, \
			< pptp_8 > pptp.8
		@cd ${WRKSRC}; sed -e s,PREFIX,${PREFIX}, \
			< pptp_reconnect > pptp-reconnect
		@rm ${WRKSRC}/pptp_8 ${WRKSRC}/pptp_reconnect

.include <bsd.port.mk>
