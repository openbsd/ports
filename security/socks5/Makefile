# New ports collection makefile for:	socks5
# Version required:			v1.0r3
# Date created:				21 Apr 1998
# Whom:					form@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.7 1998/12/01 05:10:23 form Exp $
#

DISTNAME=	socks5-v1.0r8
PKGNAME=	socks5-1.0.8
CATEGORIES=	net security
#EXTRACT_SUFX=	.tar.gz

MAINTAINER=	form@OpenBSD.ORG

NO_CDROM=	"NEC has a funky license for this software"
RESTRICTED=	"no commercial use"
IS_INTERACTIVE=	yes

# here are some extra configure args you may wish to use
# see the readme file before screwing with them
#
#EXTRA_CONFIGURE_ARGS= \
#		--with-default-server=socks.mydomain.com \
#		--with-syslog-facility=LOG_AUTH \
#		--with-passwd

ETCDIR?=	/etc
WRKSRC=		${WRKDIR}/${DISTNAME}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-libconffile=${ETCDIR}/libsocks5.conf \
		--with-srvconffile=${ETCDIR}/socks5.conf \
		--with-srvpidfile=/var/run/socks5.pid \
		--with-srvidtfile=/var/run/socks5.ident \
		${EXTRA_CONFIGURE_ARGS}
MAN1=		runsocks.1 socks5.1 stopsocks.1 socks5_clients.1
MAN5=		libsocks5.conf.5 socks5.conf.5

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} ]; then \
	  ${ECHO} ""; \
	  ${ECHO} "NEC requires that you grab the dist files from their"; \
	  ${ECHO} "web site at http://www.socks5.nec.com.  Please make sure"; \
	  ${ECHO} "you have ${DISTNAME}${EXTRACT_SUFX} in ${DISTDIR}"; \
	  ${ECHO} "and run make again."; \
	  ${ECHO} ""; \
	  exit 1;\
	fi

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
