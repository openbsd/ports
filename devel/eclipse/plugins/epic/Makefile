# $OpenBSD: Makefile,v 1.2 2007/06/27 22:47:29 kurt Exp $

COMMENT=		"Perl plugin for Eclipse IDE"

V=			0.5.33
DISTNAME=		org.epic.updatesite_0.5.33_20070406
PKGNAME=		eclipse-plugin-epic-${V}
CATEGORIES=		devel/eclipse/plugins perl

HOMEPAGE=		http://e-p-i-c.sourceforge.net/

MAINTAINER=		Carlos Valiente <yo@virutass.net>

EXTRACT_SUFX=		.zip

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=e-p-i-c/}

RUN_DEPENDS=		:eclipse-sdk->=3.1:devel/eclipse/sdk

USE_ZIP=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse
	cd ${WRKDIST}/org.epic.updatesite && tar cfL - features plugins | \
		(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
