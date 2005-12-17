# $OpenBSD: Makefile,v 1.4 2005/12/17 12:11:13 alek Exp $

COMMENT=	"translation service based on potfiles for Zope"

DISTNAME=	PlacelessTranslationService-1.2-rc1
PKGNAME=	zope-${DISTNAME:L:S/-rc/rc/}
CATEGORIES=	www

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
