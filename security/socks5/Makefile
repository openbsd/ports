# $OpenBSD: Makefile,v 1.19 2000/03/27 23:02:44 form Exp $

DISTNAME=	socks5-v1.0r10
PKGNAME=	socks5-1.0.10
CATEGORIES=	security net
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	commercial
PERMIT_PACKAGE_FTP=	commercial
PERMIT_DISTFILES_CDROM=	commercial
PERMIT_DISTFILES_FTP=	commercial

NO_CDROM=	"NEC has a funky license for this software"
RESTRICTED=	"no commercial use"
MIRROR_DISTFILE=No
IS_INTERACTIVE=	Yes
NO_PACKAGE=	interactive port
MAKE_ENV=	INSTALL_RUNSOCKS=${INSTALL_RUNSOCKS}

# here are some extra configure args you may wish to use
# see the readme file before screwing with them
#
#EXTRA_CONFIGURE_ARGS= \
#		--with-default-server=socks.mydomain.com \
#		--with-syslog-facility=LOG_AUTH \
#		--with-passwd

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-libconffile="/etc/libsocks5.conf" \
		--with-srvconffile="/etc/socks5.conf" \
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

post-build:
	@if [ ! x"${INSTALL_RUNSOCKS}" = "x" ]; then \
		sed -e "s,@PREFIX@,${PREFIX},g" ${FILESDIR}/runsocks.in \
			> ${WRKBUILD}/runsocks; \
	fi

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/server/socks5 ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/server/stopsocks ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/pt/rping ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/pt/rtraceroute ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/archie/archie \
		${PREFIX}/bin/rarchie
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/archie/archie \
		${PREFIX}/bin/rarchie
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/finger/finger \
		${PREFIX}/bin/rfinger
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/finger/whois \
		${PREFIX}/bin/rwhois
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/ftp/ftp \
		${PREFIX}/bin/rftp
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/telnet/telnet \
		${PREFIX}/bin/rtelnet
	${INSTALL_DATA} ${WRKBUILD}/include/socks.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/lib/libsocks5.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKBUILD}/man/man1/socks5.1 ${PREFIX}/man/man8/socks5.8
	${INSTALL_MAN} ${WRKBUILD}/man/man1/stopsocks.1 \
		${PREFIX}/man/man8/stopsocks.8
	${INSTALL_MAN} ${WRKBUILD}/man/man1/socks5_clients.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/man/man5/* ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/lib/socks
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/lib/socks
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/socks
	${INSTALL_MAN} ${WRKSRC}/doc/* ${PREFIX}/share/doc/socks
	@if [ ! x"$INSTALL_RUNSOCKS" = "x" ]; then \
		${INSTALL_DATA} ${WRKBUILD}/shlib/libsocks5_sh.so \
			${PREFIX}/lib; \
		${INSTALL_SCRIPT} ${WRKBUILD}/runsocks ${PREFIX}/bin; \
		${INSTALL_MAN} ${WRKBUILD}/man/man1/runsocks.1 \
			${PREFIX}/man/man1; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
INSTALL_RUNSOCKS=
.else
INSTALL_RUNSOCKS=	Yes
.endif
