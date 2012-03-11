# $OpenBSD: Makefile,v 1.9 2012/03/11 17:42:05 dcoppa Exp $

COMMENT =		fast NTLM/NTLMv2 authenticating HTTP proxy
DISTNAME =		cntlm-0.92.3
CATEGORIES =		www
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cntlm/}
HOMEPAGE =		http://awk.cz/cntlm/
MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =    Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =  Yes

WANTLIB =		c pthread

MAKE_FLAGS =		CC="${CC}"

FAKE_FLAGS =		INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_MAN="${INSTALL_MAN}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

CONFIGURE_STYLE =	simple
ALL_TARGET =		cntlm
NO_REGRESS =		Yes

.include <bsd.port.mk>
