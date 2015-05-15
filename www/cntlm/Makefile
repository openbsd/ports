# $OpenBSD: Makefile,v 1.14 2015/05/15 16:26:16 dcoppa Exp $

COMMENT =		fast NTLM/NTLMv2 authenticating HTTP proxy
DISTNAME =		cntlm-0.93beta5
REVISION =		1
CATEGORIES =		www
HOMEPAGE =		http://awk.cz/cntlm/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =  Yes

WANTLIB =		c pthread

MASTER_SITES =		http://ftp.awk.cz/pub/

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
