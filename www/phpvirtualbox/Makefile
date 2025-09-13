COMMENT=		web-based VirtualBox front-end

GH_ACCOUNT=		phpvirtualbox
GH_PROJECT=		phpvirtualbox
GH_TAGNAME=		7.1-1
PKGNAME=		phpvirtualbox-${GH_TAGNAME:S/-/./}

CATEGORIES=		www sysutils

HOMEPAGE=		https://sourceforge.net/projects/phpvirtualbox/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/php
RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-soap

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/phpvirtualbox
TINSTDIR=		${TRUEPREFIX}/phpvirtualbox
SUBST_VARS=		INSTDIR TINSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	rm ${INSTDIR}/{Dockerfile,docker-compose.yml,.{docker,git}ignore} \
		${INSTDIR}/packaging/install-scripts/{un,}install.bash
	rmdir ${INSTDIR}/packaging{/install-scripts,}

.include <bsd.port.mk>
