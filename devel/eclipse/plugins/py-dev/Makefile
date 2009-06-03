# $OpenBSD: Makefile,v 1.1.1.1 2009/06/03 15:35:45 ian Exp $

COMMENT =	Python development plug-in for Eclipse

V =		1.4.6
SVN =		2788
SUBST_VARS =	V SVN
DISTNAME =	org.python.pydev.feature-${V}.${SVN}
PKGNAME =	py-dev-${V}

CATEGORIES =	devel lang/python

HOMEPAGE =	http://pydev.sourceforge.net/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# Eclipse Public License
PERMIT_PACKAGE_CDROM =	EPL Indemnify clause
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =EPL Indemnify clause
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pydev/}
EXTRACT_SUFX =	.zip

RUN_DEPENDS=	::devel/eclipse/sdk

NO_BUILD =	Yes
NO_REGRESS =	Yes

WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse/
	cd ${WRKDIST} && pax -rwL features plugins ${PREFIX}/eclipse
	find ${PREFIX}/eclipse -type f -print | xargs chmod 644;

.include <bsd.port.mk>
