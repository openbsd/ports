# $OpenBSD: Makefile,v 1.1.1.1 2007/07/18 11:03:34 jasper Exp $

COMMENT=		gateway to send and receive SMS through GSM mobile phones

V=			3.0.9
DISTNAME=		smstools3-${V}
PKGNAME=		smstools-${V}

CATEGORIES=		comms

HOMEPAGE=		http://smstools3.kekekasvi.com/

MAINTAINER=		Stuart Henderson <stu@spacehopper.org>

#GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/packages/

USE_GMAKE=		Yes
NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/smstools3
WRKSRC= 		${WRKDIST}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/smsd ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/scripts/{sendsms,sms2html} \
		${WRKDIST}/scripts/{sms2unicode,unicode2sms} \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/smstools
	${INSTALL_DATA} ${WRKDIST}/examples/smsd.conf.full \
		${PREFIX}/share/examples/smstools
	${INSTALL_DATA} ${FILESDIR}/smsd.conf.openbsd \
	       ${PREFIX}/share/examples/smstools
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smstools
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smstools/slideshow
	${INSTALL_DATA} ${WRKDIST}/doc/*html ${PREFIX}/share/doc/smstools
	${INSTALL_DATA} ${WRKDIST}/doc/slideshow/* \
		${PREFIX}/share/doc/smstools/slideshow

.include <bsd.port.mk>
