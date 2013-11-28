# $OpenBSD: Makefile,v 1.5 2013/11/28 15:43:55 giovanni Exp $

COMMENT =	remotely determine DNS server versions

GH_VER =	20130404
DISTNAME =	fpdns-0.10.0.${GH_VER}

CATEGORIES =	net

HOMEPAGE =	https://code.google.com/p/fpdns/
MASTER_SITES =	https://github.com/kirei/fpdns/archive/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =	${WRKDIR}/fpdns-${GH_VER}

CONFIGURE_STYLE = perl

RUN_DEPENDS =	net/p5-Net-DNS

.include <bsd.port.mk>
