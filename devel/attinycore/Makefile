# $OpenBSD: Makefile,v 1.1.1.1 2020/08/21 13:47:25 tracey Exp $

COMMENT =	Arduino core for modern ATtiny chips

GH_ACCOUNT =	SpenceKonde
GH_PROJECT =	ATTinyCore
GH_TAGNAME =	1.4.1

PKGNAME =	attinycore-${GH_TAGNAME}

CATEGORIES =	devel

MAINTAINER =	Tracey Emery <tracey@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE = Yes

RUN_DEPENDS +=	devel/arduino

INSTALLDIR =	${PREFIX}/share/arduino/hardware/ATTinyCore/avr

NO_TEST =	Yes
NO_BUILD =	Yes

do-install:
	@mkdir -p ${INSTALLDIR}
	@cp -r ${WRKDIST}/* ${INSTALLDIR}

.include <bsd.port.mk>
