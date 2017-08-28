# $OpenBSD: Makefile,v 1.31 2017/08/28 20:57:06 ian Exp $

COMMENT=		NetBeans Java IDE

V=			8.2
DISTNAME=		netbeans-${V}
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		https://www.netbeans.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org> \
			Rafael Sadowski <rsadowski@openbsd.org>

# CDDL and GPLv2 dual-licensed
# See:
# https://netbeans.org/about/legal/index.html
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.netbeans.org/netbeans/${V}/final/zip/
EXTRACT_SUFX=		-201609300101.zip

MODULES=		java
MODJAVA_VER=		1.8+

RUN_DEPENDS=		java/javaPathHelper \
			devel/desktop-file-utils

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/netbeans

NB=			${PREFIX}/netbeans

do-install:
	${INSTALL_DATA_DIR} ${NB}
	@tar -czf - -C ${WRKDIST} . | tar xzf - -C ${NB}
	@rm -rf ${NB}/profiler ${NB}/{ide,cnd,dlight}/bin \
		${NB}/platform/modules/lib/{i386,amd64,x86}
	@find ${NB} -name "*.dll" -o -name "*.exe" -o -name "*.cmd" \
		-o -name "*.bat" -o -name ".lastModified" \
		-o -name "*.orig" | xargs rm
	@${SUBST_PROGRAM} ${FILESDIR}/netbeans ${PREFIX}/bin/netbeans
	@${INSTALL_DATA_DIR} ${NB}/cnd/bin
	@${INSTALL_SCRIPT} ${WRKDIST}/cnd/bin/dorun.sh ${NB}/cnd/bin/
	@${INSTALL_DATA_DIR} ${NB}/ide/bin/nativeexecution
	@${INSTALL_SCRIPT} ${WRKDIST}/ide/bin/nativeexecution/hostinfo.sh \
		${NB}/ide/bin/nativeexecution/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_DATA} ${FILESDIR}/netbeans.desktop \
		${PREFIX}/share/applications/netbeans.desktop

.include <bsd.port.mk>
