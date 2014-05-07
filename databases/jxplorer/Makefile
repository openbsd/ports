# $OpenBSD: Makefile,v 1.14 2014/05/07 15:42:15 kurt Exp $

COMMENT=	standards compliant LDAP browser

V=		3.2
DISTNAME=	JXv${V}deploy
PKGNAME=	jxplorer-${V}
REVISION=	9
EXTRACT_SUFX=	.zip
CATEGORIES=	databases net

HOMEPAGE=	http://www.pegacat.com/jxplorer/

# CA Open Source Licence v1.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jxplorer/}
WRKDIST=	${WRKDIR}/jxplorer

MODULES=	java
MODJAVA_VER=	1.5+

RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

do-configure:
	@cp ${FILESDIR}/jxplorer ${WRKSRC}
	@perl -pi -e "s,%%PREFIX%%,${PREFIX}," \
		${WRKSRC}/jxplorer \
		${WRKSRC}/jxplorer.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jxplorer
	cp -r ${WRKSRC}/* ${PREFIX}/share/jxplorer
	${INSTALL_SCRIPT} ${WRKSRC}/jxplorer ${PREFIX}/bin/

.include <bsd.port.mk>
