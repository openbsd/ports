# $OpenBSD: Makefile,v 1.2 2014/01/12 10:25:56 jasper Exp $

COMMENT=		MCollective agent to manage Packages

GH_VER=			4.2.1
DISTNAME=		mcollective-package-agent-${GH_VER}

MASTER_SITES=		https://github.com/puppetlabs/mcollective-package-agent/archive/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

MCO_SUBDIRS=		agent application util

.include <bsd.port.mk>
