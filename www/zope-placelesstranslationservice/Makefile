# $OpenBSD: Makefile,v 1.1.1.1 2004/10/06 08:51:49 xsa Exp $

COMMENT=	"translation service based on potfiles for Zope"

DISTNAME=	PlacelessTranslationService-1.2-rc1
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=collective/}

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-formulator

WRKDIST=	${WRKDIR}/PlacelessTranslationService

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - PlacelessTranslationService | \
		tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
