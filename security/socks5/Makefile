# $OpenBSD: Makefile,v 1.18 2000/03/24 22:11:58 espie Exp $

DISTNAME=	socks5-v1.0r10
PKGNAME=	socks5-1.0.10
CATEGORIES=	security
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		COMM
PERMIT_PACKAGE_CDROM=	commercial
PERMIT_PACKAGE_FTP=	commercial
PERMIT_DISTFILES_CDROM=	commercial
PERMIT_DISTFILES_FTP=	commercial

NO_CDROM=	"NEC has a funky license for this software"
RESTRICTED=	"no commercial use"
MIRROR_DISTFILE=no
IS_INTERACTIVE=	yes
NO_PACKAGE=	interactive port

# here are some extra configure args you may wish to use
# see the readme file before screwing with them
#
#EXTRA_CONFIGURE_ARGS= \
#		--with-default-server=socks.mydomain.com \
#		--with-syslog-facility=LOG_AUTH \
#		--with-passwd

ETCDIR?=	/etc
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-libconffile="${ETCDIR}/libsocks5.conf" \
		--with-srvconffile="${ETCDIR}/socks5.conf" \
		--with-srvpidfile="/var/run/socks5.pid" \
		--with-srvidtfile="/var/run/socks5.ident" \
		${EXTRA_CONFIGURE_ARGS}

WRKDIST=	${WRKDIR}/${DISTNAME}

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
	${INSTALL_DATA_DIR} ${PREFIX}/lib/socks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socks
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/lib/socks
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/socks
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
