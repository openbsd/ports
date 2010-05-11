# $OpenBSD: Makefile,v 1.1.1.1 2010/05/11 17:07:33 pirofti Exp $

COMMENT =	library for fast updates of QR and Cholesky decompositions

DISTNAME =	qrupdate-1.1.1
SHARED_LIBS +=  qrupdate	0.0	# .1.1
CATEGORIES =	math

HOMEPAGE =	http://qrupdate.sourceforge.net/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qrupdate/}

WANTLIB +=		g2c m

USE_GMAKE =		Yes

.include <bsd.port.mk>
