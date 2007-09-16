# $OpenBSD: Makefile,v 1.6 2007/09/16 00:17:05 merdely Exp $

COMMENT=	pop password changing daemon using KerberosV

DISTNAME=	kpoppassd-0.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail

HOMEPAGE=	http://kpoppassd.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kpoppassd/}

WANTLIB=	c com_err crypto krb5

WRKDIST=	${WRKDIR}/kpoppassd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kpoppassd ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kpoppassd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kpoppassd

.include <bsd.port.mk>
