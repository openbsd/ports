# $OpenBSD: Makefile,v 1.6 2013/03/11 11:20:28 espie Exp $

ONLY_FOR_ARCHS =	i386
COMMENT =		high-speed threaded Scheme interpreter

VERSION =		7.4
MACHINE-TYPE=		ti3ob
REVISION =		0
DISTNAME =		pcsv${VERSION}-${MACHINE-TYPE}
PKGNAME =		petite-chez-${VERSION}

CATEGORIES =		lang

HOMEPAGE =		http://www.scheme.com/

MAINTAINER =		Aaron W. Hsu <arcfide@sacrideo.us>

# A few ambiguities, so err on the side of caution
PERMIT_PACKAGE_CDROM =	Ambiguous
PERMIT_PACKAGE_FTP =	Ambiguous
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c curses m pthread z

MASTER_SITES =		${HOMEPAGE}/download/

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--machine=${MACHINE-TYPE} \
			--installprefix=${TRUEPREFIX} \
			--temproot=${WRKINST} \
			--force-relink \
			--threads
USE_GROFF =		Yes
			
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/csv7.4
WRKSRC =		${WRKDIST}/custom

ALL_TARGET =		# empty

.include <bsd.port.mk>
