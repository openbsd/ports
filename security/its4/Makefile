# Makefile for:		its4
# Version required:	1.0
# Date created:		21 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 2000/02/22 02:15:54 dugsong Exp $

DISTNAME=	its4-1.0

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	see-do-fetch-target

EXTRACT_SUFX=	.tgz

HAS_CONFIGURE=	yes

CONFIGURE_ARGS=	--prefix=${PREFIX} --datadir=${PREFIX}/share/its4

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   ${ECHO} "" ; \
	   ${ECHO} "  The source to this port may not be automatically fetched" ; \
	   ${ECHO} "  due to licensing restrictions. You MUST fetch the source" ; \
	   ${ECHO} "  manually after reading and agreeing to the license at:" ; \
	   ${ECHO} "" ; \
	   ${ECHO} "      http://www.rstcorp.com/its4/download.html" ; \
	   ${ECHO} "" ; \
	   ${ECHO} "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}" ; \
	   ${ECHO} "  and then restart this build." ; \
	   ${ECHO} "" ; \
	   exit 1 ; \
	fi

.include <bsd.port.mk>
