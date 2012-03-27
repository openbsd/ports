# $OpenBSD: Makefile,v 1.1 2012/03/27 08:05:37 ratchov Exp $

COMMENT =		control aucat and/or sndiod volume
DISTNAME =		aucatctl-0.1
CATEGORIES =		audio
HOMEPAGE =		http://caoua.org/sndio/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c sndio
MASTER_SITES =		${HOMEPAGE}
NO_REGRESS =		Yes
MAKE_FLAGS =		CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aucatctl ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/aucatctl.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
