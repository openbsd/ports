# $OpenBSD: Makefile,v 1.35 2019/03/17 16:11:22 kn Exp $

COMMENT=		NetBeans Java IDE

V=			10.0
DISTNAME=		incubating-netbeans-${V}-bin
PKGNAME=		netbeans-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.netbeans.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org> \
			Rafael Sadowski <rsadowski@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_APACHE:=incubator/netbeans/incubating-netbeans/incubating-${V}/}
EXTRACT_SUFX=		.zip

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
	cd ${WRKDIST} && pax -rw . ${NB}
	@rm -rf ${NB}/profiler ${NB}/{ide,cnd,dlight}/bin \
		${NB}/platform/modules/lib/{i386,amd64,x86}
	@find ${NB} -type f \( -name "*.dll" -o -name "*.exe" -o -name "*.cmd" \
		-o -name "*.bat" -o -name ".lastModified" \
		-o -name "*.orig" \) -delete
	@${SUBST_PROGRAM} ${FILESDIR}/netbeans ${PREFIX}/bin/netbeans
	@${INSTALL_DATA_DIR} ${NB}/cnd/bin
	@${INSTALL_DATA_DIR} ${NB}/ide/bin/nativeexecution
	@${INSTALL_SCRIPT} ${WRKDIST}/ide/bin/nativeexecution/hostinfo.sh \
		${NB}/ide/bin/nativeexecution/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_DATA} ${FILESDIR}/netbeans.desktop \
		${PREFIX}/share/applications/netbeans.desktop

.include <bsd.port.mk>
