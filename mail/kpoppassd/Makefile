# $OpenBSD: Makefile,v 1.11 2013/04/27 15:44:21 ajacoutot Exp $

COMMENT=	pop password changing daemon using KerberosV

DISTNAME=	kpoppassd-0.5
REVISION =	4

CATEGORIES=	mail

HOMEPAGE=	http://kpoppassd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c com_err crypto krb5

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kpoppassd/}

WRKDIST=	${WRKDIR}/kpoppassd

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kpoppassd ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kpoppassd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kpoppassd

.include <bsd.port.mk>
