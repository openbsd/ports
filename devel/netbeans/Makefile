# $OpenBSD: Makefile,v 1.13 2010/04/05 17:09:17 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		NetBeans Java IDE

V=			6.8
DISTNAME=		netbeans-${V}-200912041610-ml
PKGNAME=		netbeans-${V}p0
CATEGORIES=		java devel

HOMEPAGE=		http://www.netbeans.org/

MAINTAINER=		Daniel Dickman <didickman@gmail.com>

# CDDL and GPLv2 dual-licensed
#
# For external components see:
#   http://www.netbeans.info/downloads/licence/netbeans-3rd-party.txt
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.netbeans.org/netbeans/sync/${V}/zip/
EXTRACT_SUFX=		.zip

MODULES=		java
MODJAVA_VER=		1.6+

RUN_DEPENDS=		::java/javaPathHelper \
			::devel/desktop-file-utils

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/netbeans

NB=			${PREFIX}/netbeans

do-install:
	${INSTALL_DATA_DIR} ${NB}
	@tar -czf - -C ${WRKDIR}/netbeans . | tar xzf - -C ${NB}
	@rm -rf ${NB}/profiler3
	@find ${NB} -name "*.dll" -o -name "*.exe" -o -name "*.cmd" \
		-o -name "*.bat" -o -name "*.orig" | xargs rm
	${SUBST_CMD} -c ${FILESDIR}/netbeans \
		${PREFIX}/bin/netbeans
	@chmod ${BINMODE} ${PREFIX}/bin/netbeans
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/netbeans
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${NB}
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_CMD} -c ${FILESDIR}/netbeans.desktop \
		${PREFIX}/share/applications/netbeans.desktop
	@chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/applications/netbeans.desktop

.include <bsd.port.mk>
