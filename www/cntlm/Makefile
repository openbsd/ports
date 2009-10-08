# $OpenBSD: Makefile,v 1.1.1.1 2009/10/08 19:13:09 sthen Exp $

COMMENT =		fast NTLM/NTLMv2 authenticating HTTP proxy
DISTNAME =		cntlm-0.35.1
CATEGORIES =		www
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cntlm/}
HOMEPAGE =		http://cntlm.sourceforge.net/
MAINTAINER =		David Coppa <dcoppa@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =    Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =  Yes

WANTLIB =		c pthread

CONFIGURE_STYLE =	simple
ALL_TARGET =		cntlm
NO_REGRESS =		Yes

.include <bsd.port.mk>
