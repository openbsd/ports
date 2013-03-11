# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:41 espie Exp $

COMMENT =		fast NTLM/NTLMv2 authenticating HTTP proxy
DISTNAME =		cntlm-0.92.3
CATEGORIES =		www
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cntlm/}
HOMEPAGE =		http://awk.cz/cntlm/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =  Yes

WANTLIB =		c pthread

MAKE_FLAGS =		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}/cntlm" \
			LDFLAGS="-pthread"

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
