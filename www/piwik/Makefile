# $OpenBSD: Makefile,v 1.83 2018/09/04 12:46:26 espie Exp $

COMMENT=		open source web analytics software program

DISTNAME=		piwik-3.5.1
CATEGORIES=		www
REVISION=		0

HOMEPAGE=		http://www.piwik.org/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://builds.piwik.org/

WRKDIST=		${WRKDIR}/piwik

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/piwik/
SUBST_VARS=		INSTDIR

MODULES=	lang/php \
		lang/python
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-pdo_mysql

MODPY_ADJ_FILES=misc/log-analytics/import_logs.py
MODPY_RUNDEP=	No

post-patch:
	@find ${WRKSRC} -name "*.orig" -exec rm -f {} \;

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && tar -cf - * | \
                tar -C ${INSTDIR} -xf -
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
