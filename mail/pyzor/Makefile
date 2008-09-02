# $OpenBSD: Makefile,v 1.1.1.1 2008/09/02 12:33:17 jasper Exp $

COMMENT=		collaborative, networked system to detect and block spam

DISTNAME=		pyzor-0.4.0
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

SUBST_VARS=		MODPY_BIN

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/pyzor ${WRKSRC}/scripts/pyzord

.include <bsd.port.mk>
