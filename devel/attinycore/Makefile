# $OpenBSD: Makefile,v 1.2 2021/02/26 17:50:15 tracey Exp $

COMMENT =	Arduino core for modern ATtiny chips

GH_ACCOUNT =	SpenceKonde
GH_PROJECT =	ATTinyCore
GH_TAGNAME =	1.5.0

PKGNAME =	attinycore-${GH_TAGNAME}

CATEGORIES =	devel

MAINTAINER =	Tracey Emery <tracey@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE = Yes

RUN_DEPENDS +=	devel/arduino

INSTALLDIR =	${PREFIX}/share/arduino/hardware/ATTinyCore

NO_TEST =	Yes
NO_BUILD =	Yes

do-install:
	@mkdir -p ${INSTALLDIR}
	@cp -r ${WRKDIST}/* ${INSTALLDIR}

.include <bsd.port.mk>
