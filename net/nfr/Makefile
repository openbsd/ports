# OpenBSD makefile for:	nfr
# Version required:	1.6.2
# Date created:		1998-Jul-4
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.2 1998/09/14 17:44:21 marc Exp $
#

DISTNAME=		nfr-1.6.2-src
PKGNAME=		nfr-1.6.2
CATEGORIES=     	net

MAINTAINER=		dugsong@openbsd.org

NO_CDROM=		"LIC: redistribution not allowed"

MASTER_SITES=		see_pre-fetch_target
EXTRACT_SUFX=		.tar.Z

IS_INTERACTIVE=		yes

WRKSRC=			${WRKDIR}/nfr-1.6/nfr

MAKE_ENV+=		NFRHOME=${PREFIX}/nfr

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	 ${ECHO} "";\
	 ${ECHO} "  The source to this port may not be automatically fetched";\
	 ${ECHO} "  due to licensing restrictions. You MUST fetch the sources";\
	 ${ECHO} "  manually after reading and agreeing to the license terms";\
	 ${ECHO} "  and supplying your name and e-mail address. See";\
	 ${ECHO} "";\
	 ${ECHO} "           http://www.nfr.net/download/";\
	 ${ECHO} "";\
	 ${ECHO} "  for details. Once ${DISTFILES} has been downloaded,";\
	 ${ECHO} "  move it to ${DISTDIR} and then restart this build.";\
	 ${ECHO} "";\
	 exit 1;\
	fi

pre-install:
	@${MKDIR} ${PREFIX}/nfr
	@${CP} ${FILESDIR}/createuser ${PREFIX}/nfr
	@${CP} ${FILESDIR}/configure-nfr ${PREFIX}/nfr
	@${SETENV} ${MAKE_ENV} perl ${PREFIX}/nfr/createuser

post-install:
	@${SETENV} ${MAKE_ENV} sh ${PREFIX}/nfr/configure-nfr
	@${ECHO} ""
	@${ECHO} "  NFR makes use of a modified bpf driver which has been"
	@${ECHO} "  integrated into OpenBSD 2.3-current. Make sure you have"
	@${ECHO} "  a bpf device enabled in your kernel. Add the following"
	@${ECHO} "  to your kernel config file and rebuild, if you don't:"
	@${ECHO} ""
	@${ECHO} "   pseudo-device   bpfilter 4      # packet filter"
	@${ECHO} ""
	@${ECHO} "  NFR has been installed in ${PREFIX}/nfr which is the"
	@${ECHO} "  home directory of user \"nfr\". See the README file"
	@${ECHO} "  in that directory for more information."
	@${ECHO} ""

.include <bsd.port.mk>
