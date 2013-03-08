# $OpenBSD: Makefile,v 1.9 2013/03/08 06:41:03 ajacoutot Exp $

COMMENT=	pop password changing daemon using KerberosV

DISTNAME=	kpoppassd-0.5
REVISION =	3

CATEGORIES=	mail

HOMEPAGE=	http://kpoppassd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c com_err crypto krb5

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kpoppassd/}

WRKDIST=	${WRKDIR}/kpoppassd

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kpoppassd ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kpoppassd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kpoppassd

.include <bsd.port.mk>
