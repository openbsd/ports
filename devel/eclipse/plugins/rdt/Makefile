# $OpenBSD: Makefile,v 1.11 2013/02/04 13:11:43 jasper Exp $

COMMENT=		Ruby Development Tools for Eclipse IDE

V=			0.8.0
DISTNAME=		org.rubypeople.rdt-0.8.0.604272100PRD
PKGNAME=		eclipse-plugin-rdt-${V}
REVISION=		3
CATEGORIES+=		lang/ruby

HOMEPAGE=		http://rubyeclipse.sourceforge.net/

MAINTAINER=		Carlos Valiente <yo@virutass.net>

EXTRACT_SUFX=		.zip

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rubyeclipse/}

MODULES=		lang/ruby
MODRUBY_BUILDDEP=	No
RUN_DEPENDS=		devel/eclipse/sdk>=3.1
			
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse
	cd ${WRKDIST} && tar cfL - features plugins | \
		(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
