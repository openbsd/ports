# $OpenBSD: Makefile,v 1.16 2002/10/28 17:35:01 naddy Exp $

COMMENT=	"scan C/C++ source code for security problems"

DISTNAME=	its4-1.1.1
CATEGORIES=	security
MASTER_SITES=	#see-do-fetch-target
EXTRACT_SUFX=	.tgz

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"commercial. licensing restrictions."
PERMIT_PACKAGE_FTP=	"commercial. licensing restrictions."
PERMIT_DISTFILES_CDROM=	"commercial. licensing restrictions."
PERMIT_DISTFILES_FTP=	"commercial. licensing restrictions."

CONFIGURE_STYLE= gnu dest old

CONFIGURE_ARGS=	--datadir='$${DESTDIR}${PREFIX}/share/its4' \
		--with-cpp="${CXX}"

WRKDIST=	${WRKDIR}/its4

NO_REGRESS=	Yes

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo "  The source to this port may not be automatically fetched" ; \
	   echo "  due to licensing restrictions. You MUST fetch the source" ; \
	   echo "  manually after reading and agreeing to the license at:" ; \
	   echo "" ; \
	   echo "      http://www.cigital.com/its4/" ; \
	   echo "" ; \
	   echo "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}" ; \
	   echo "  and then restart this build." ; \
	   echo "" ; \
	   exit 1 ; \
	fi

post-install:
	@strip ${PREFIX}/bin/its4

.include <bsd.port.mk>
