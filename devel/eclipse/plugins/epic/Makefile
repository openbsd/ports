# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:03 espie Exp $

COMMENT=		Perl plugin for Eclipse IDE

V=			0.5.33
DISTNAME=		org.epic.updatesite_${V}_20070406
PKGNAME=		eclipse-plugin-epic-${V}
REVISION=		2
CATEGORIES+=		perl5

HOMEPAGE=		http://e-p-i-c.sourceforge.net/

MAINTAINER=		Carlos Valiente <yo@virutass.net>

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=e-p-i-c/}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse
	cd ${WRKDIST}/org.epic.updatesite && tar cfL - features plugins | \
		(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
