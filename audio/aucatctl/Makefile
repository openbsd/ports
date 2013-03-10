# $OpenBSD: Makefile,v 1.2 2013/03/10 22:55:01 espie Exp $

COMMENT =		control aucat and/or sndiod volume
DISTNAME =		aucatctl-0.1
CATEGORIES =		audio
HOMEPAGE =		http://caoua.org/sndio/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c sndio
MASTER_SITES =		${HOMEPAGE}
NO_TEST =		Yes
MAKE_FLAGS =		CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aucatctl ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/aucatctl.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
