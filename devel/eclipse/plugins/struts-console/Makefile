# $OpenBSD: Makefile,v 1.1.1.1 2007/09/28 23:49:58 ian Exp $

COMMENT=		Configuration tool for Struts web framework

V=4.8
DISTNAME=		struts-console-${V}
PKGNAME=		eclipse-plugin-struts-console-${V}

CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://www.jamesholmes.com/struts/console/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Free for use, but no redistribution. 
PERMIT_PACKAGE_CDROM=	"no redistribution"
PERMIT_PACKAGE_FTP=	"no redistribution"
PERMIT_DISTFILES_CDROM=	"no redistribution"
PERMIT_DISTFILES_FTP=	"no redistribution"

MASTER_SITES=		http://www.jamesholmes.com/struts/

TAR=			${LOCALBASE}/bin/gtar

BUILD_DEPENDS=		:gtar-*:archivers/gtar
RUN_DEPENDS=		:eclipse-sdk->=3.2:devel/eclipse/sdk

NO_BUILD=		Yes
NO_REGRESS=		Yes

PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse/plugins
	cd ${WRKDIST} && ${TAR} cf - com.jamesholmes.console.struts | \
		(cd ${PREFIX}/eclipse/plugins && ${TAR} -xf -)
	cd ${PREFIX}/eclipse/plugins/com.jamesholmes.console.struts && mv plugin-3.0.xml plugin.xml
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
