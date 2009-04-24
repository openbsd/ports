# $OpenBSD: Makefile,v 1.1.1.1 2009/04/24 13:13:45 wcmaier Exp $

ONLY_FOR_ARCHS =	i386
COMMENT =		high-speed threaded Scheme interpreter

VERSION =		7.4
MACHINE-TYPE=		ti3ob
DISTNAME =		pcsv${VERSION}-${MACHINE-TYPE}
PKGNAME =		petite-chez-${VERSION}

CATEGORIES =		lang

HOMEPAGE =		http://www.scheme.com

MAINTAINER =		Aaron W. Hsu <arcfide@sacrideo.us>

# A few ambiguities, so err on the side of caution
PERMIT_PACKAGE_CDROM =	Ambiguous
PERMIT_PACKAGE_FTP =	Ambiguous
PERMIT_DISTFILES_CDROM =Ambiguous
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c curses m pthread z

MASTER_SITES =		http://www.scheme.com/download/

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--machine=${MACHINE-TYPE} \
			--installprefix=${TRUEPREFIX} \
			--temproot=${WRKINST} \
			--force-relink --threads
			
NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/csv7.4
WRKSRC =		${WRKDIST}/custom

ALL_TARGET =		

.include <bsd.port.mk>
