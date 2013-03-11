# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:03 espie Exp $

COMMENT=		Eclipse plugin for Java program checker (bytecode analyzer)

V=			1.2.0
REVISION =		1
DISTNAME=		edu.umd.cs.findbugs.plugin.eclipse_${V}.20070425
PKGNAME=		eclipse-plugin-findbugs-${V}
PKG_ARCH=		*
CATEGORIES+=		java

HOMEPAGE=		http://findbugs.sourceforge.net/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# LGPL, see HOMEPAGE
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=findbugs/}

SUBST_VARS=		V

PLUGINS_HOME=		${PREFIX}/eclipse/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINS_HOME}
	cd ${WRKDIR} && tar cfL - ${DISTNAME} | \
		(cd ${PLUGINS_HOME} && tar -xf -)

.include <bsd.port.mk>
