# Makefile for:		its4
# Version required:	1.0
# Date created:		21 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.4 2000/03/23 05:09:33 turan Exp $

DISTNAME=	its4-1.0.1

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"commercial.  licensing restrictions."
PERMIT_PACKAGE_FTP=	"commercial.  licensing restrictions."
PERMIT_DISTFILES_CDROM=	"commercial.  licensing restrictions."
PERMIT_DISTFILES_FTP=	"commercial.  licensing restrictions."

MASTER_SITES=	see-do-fetch-target

EXTRACT_SUFX=	.tgz

HAS_CONFIGURE=	yes

CONFIGURE_ARGS=	--prefix=${PREFIX} --datadir=${PREFIX}/share/its4

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo "  The source to this port may not be automatically fetched" ; \
	   echo "  due to licensing restrictions. You MUST fetch the source" ; \
	   echo "  manually after reading and agreeing to the license at:" ; \
	   echo "" ; \
	   echo "      http://www.rstcorp.com/its4/download.html" ; \
	   echo "" ; \
	   echo "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}" ; \
	   echo "  and then restart this build." ; \
	   echo "" ; \
	   exit 1 ; \
	fi

.include <bsd.port.mk>
