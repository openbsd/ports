# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:03 espie Exp $

COMMENT=		configuration tool for Struts web framework

V=4.8
DISTNAME=		struts-console-${V}
PKGNAME=		eclipse-plugin-struts-console-${V}
REVISION =		1

CATEGORIES?=		java

HOMEPAGE=		http://www.jamesholmes.com/struts/console/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Free for use, but no redistribution. 
PERMIT_PACKAGE_CDROM=	no redistribution
PERMIT_PACKAGE_FTP=	no redistribution
PERMIT_DISTFILES_FTP=	no redistribution

MASTER_SITES=		http://www.jamesholmes.com/struts/

WRKDIST=		${WRKDIR}/${DISTNAME}

PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse/plugins
	cd ${WRKDIST} && ${TAR} cf - com.jamesholmes.console.struts | \
		(cd ${PREFIX}/eclipse/plugins && ${TAR} -xf -)
	cd ${PREFIX}/eclipse/plugins/com.jamesholmes.console.struts && mv plugin-3.0.xml plugin.xml
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
