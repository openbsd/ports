# $OpenBSD: Makefile,v 1.15 2000/02/11 01:10:12 espie Exp $

DISTNAME=	socks5-v1.0r10
PKGNAME=	socks5-1.0.10
CATEGORIES=	security

MAINTAINER=	ports@openbsd.org

NO_CDROM=	"NEC has a funky license for this software"
RESTRICTED=	"no commercial use"
MIRROR_DISTFILE=no
IS_INTERACTIVE=	yes
NO_PACKAGE=	interactive port
NEED_VERSION=	1.191

# here are some extra configure args you may wish to use
# see the readme file before screwing with them
#
#EXTRA_CONFIGURE_ARGS= \
#		--with-default-server=socks.mydomain.com \
#		--with-syslog-facility=LOG_AUTH \
#		--with-passwd

ETCDIR?=	/etc
WRKDIST=	${WRKDIR}/${DISTNAME}
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
	  echo ""; \
	  echo "NEC requires that you grab the dist files from their"; \
	  echo "web site at http://www.socks.nec.com.  Please make sure"; \
	  echo "you have ${DISTNAME}${EXTRACT_SUFX} in ${DISTDIR}"; \
	  echo "and run make again."; \
	  echo ""; \
	  exit 1;\
	fi

post-install:
	mkdir -p ${PREFIX}/lib/socks
	mkdir -p ${PREFIX}/share/doc/socks
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/lib/socks
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/socks
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
