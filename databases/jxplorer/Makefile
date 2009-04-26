# $OpenBSD: Makefile,v 1.7 2009/04/26 09:38:25 sthen Exp $

COMMENT=	standards compliant LDAP browser

V=		3.2
DISTNAME=	JXv${V}deploy
PKGNAME=	jxplorer-${V}p4
EXTRACT_SUFX=	.zip
CATEGORIES=	databases net

HOMEPAGE=	http://www.pegacat.com/jxplorer/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# CA Open Source Licence v1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jxplorer/}
WRKDIST=	${WRKDIR}/jxplorer

MODULES=	java
MODJAVA_VER=	1.5+
JAVA_HOME=	${LOCALBASE}/jdk-1.5.0

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-configure:
	@cp ${FILESDIR}/jxplorer ${WRKSRC}
	@perl -pi -e "s,%%JAVA_HOME%%,${JAVA_HOME}," ${WRKSRC}/jxplorer.sh
	@perl -pi -e "s,%%PREFIX%%,${PREFIX}," \
		${WRKSRC}/jxplorer \
		${WRKSRC}/jxplorer.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jxplorer
	cp -r ${WRKSRC}/* ${PREFIX}/share/jxplorer
	${INSTALL_SCRIPT} ${WRKSRC}/jxplorer ${PREFIX}/bin/

.include <bsd.port.mk>
