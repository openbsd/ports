# $OpenBSD: Makefile,v 1.5 2010/11/26 07:19:00 espie Exp $

COMMENT=		Eclipse plugin for Java program checker (bytecode analyzer)

V=			1.2.0
DISTNAME=		edu.umd.cs.findbugs.plugin.eclipse_${V}.20070425
EXTRACT_SUFX=           .zip
PKGNAME=		eclipse-plugin-findbugs-${V}
PKG_ARCH=		*
CATEGORIES=		devel/eclipse/plugins java

HOMEPAGE=		http://findbugs.sourceforge.net/

MAINTAINER=		Ian Darwin <ian@darwinsys.com>

# LGPL, see HOMEPAGE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=findbugs/}

RUN_DEPENDS=		devel/eclipse/sdk>=3.2

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

SUBST_VARS=		V

PLUGINS_HOME=		${PREFIX}/eclipse/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINS_HOME}
	cd ${WRKDIR} && tar cfL - ${DISTNAME} | \
		(cd ${PLUGINS_HOME} && tar -xf -)

.include <bsd.port.mk>
