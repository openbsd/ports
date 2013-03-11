# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:03 espie Exp $

COMMENT =	Python development plug-in for Eclipse

V =		1.4.6
SVN =		2788
SUBST_VARS =	V SVN
DISTNAME =	org.python.pydev.feature-${V}.${SVN}
PKGNAME =	py-dev-${V}
REVISION =	3

CATEGORIES +=	lang/python

HOMEPAGE =	http://pydev.sourceforge.net/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# Eclipse Public License
PERMIT_PACKAGE_CDROM =	EPL Indemnify clause
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pydev/}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse/
	cd ${WRKDIST} && pax -rwL features plugins ${PREFIX}/eclipse
	find ${PREFIX}/eclipse -type f -print | xargs chmod 644;

.include <bsd.port.mk>
