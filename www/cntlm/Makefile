# $OpenBSD: Makefile,v 1.19 2019/07/12 21:07:46 sthen Exp $

COMMENT =		fast NTLM/NTLMv2 authenticating HTTP proxy
DISTNAME =		cntlm-0.93beta5
REVISION =		5
CATEGORIES =		www
HOMEPAGE =		http://cntlm.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		http://distfiles.gentoo.org/distfiles/

MAKE_FLAGS =		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}/cntlm"

CONFIGURE_STYLE =	simple
ALL_TARGET =		cntlm
USE_GMAKE =		Yes

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cntlm
	${INSTALL_PROGRAM} ${WRKBUILD}/cntlm ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/doc/cntlm.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/doc/cntlm.conf ${PREFIX}/share/examples/cntlm/

.include <bsd.port.mk>
