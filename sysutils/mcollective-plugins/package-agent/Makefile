# $OpenBSD: Makefile,v 1.4 2014/04/17 18:27:21 jasper Exp $

COMMENT=		MCollective agent to manage Packages

GH_VER=			4.3.0
DISTNAME=		mcollective-package-agent-${GH_VER}

MASTER_SITES=		https://github.com/puppetlabs/mcollective-package-agent/archive/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

MCO_SUBDIRS=		agent application util

.include <bsd.port.mk>
