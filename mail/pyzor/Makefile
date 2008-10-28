# $OpenBSD: Makefile,v 1.3 2008/10/28 09:28:24 ajacoutot Exp $

COMMENT=		collaborative, networked system to detect and block spam

DISTNAME=		pyzor-0.4.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		mail net

HOMEPAGE=		http://pyzor.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pyzor/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python

NO_REGRESS=		Yes

post-extract:
	chmod -R og+r ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/pyzor ${WRKSRC}/scripts/pyzord

.include <bsd.port.mk>
