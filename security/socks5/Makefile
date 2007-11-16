# $OpenBSD: Makefile,v 1.36 2007/11/16 14:13:05 kili Exp $

COMMENT=	SOCKS v5 application layer gateway and clients

DISTNAME=	socks5-v1.0r11
PKGNAME=	socks5-1.0.11p0
CATEGORIES=	security net

HOMEPAGE=	http://www.socks.permeo.com/AboutSOCKS/SOCKSvF.asp

PERMIT_PACKAGE_CDROM=	commercial
PERMIT_PACKAGE_FTP=	commercial
PERMIT_DISTFILES_CDROM=	commercial
PERMIT_DISTFILES_FTP=	commercial
WANTLIB=		c termcap

# here are some extra configure args you may wish to use
# see the readme file before screwing with them
#
#EXTRA_CONFIGURE_ARGS= \
#		--with-default-server=socks.mydomain.com \
#		--with-syslog-facility=LOG_AUTH \
#		--with-passwd

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-libconffile="${SYSCONFDIR}/libsocks5.conf" \
		--with-srvconffile="${SYSCONFDIR}/socks5.conf" \
		--with-srvpidfile="/var/run/socks5.pid" \
		--with-srvidtfile="/var/run/socks5.ident" \
		${EXTRA_CONFIGURE_ARGS}

MAKE_ENV=	INSTALL_RUNSOCKS="${INSTALL_RUNSOCKS}"

NO_REGRESS=	Yes

FETCH_MANUALLY=	"NEC requires that you grab the dist files from their" \
		"web site at ${HOMEPAGE}." \
		"Please make sure you have ${DISTNAME}${EXTRACT_SUFX}" \
		"in ${FULLDISTDIR} and run make again." \
		""

post-build:
	@if [ ! x"${INSTALL_RUNSOCKS}" = "x" ]; then \
		sed -e "s,@PREFIX@,${PREFIX},g" ${FILESDIR}/runsocks.in \
			> ${WRKBUILD}/runsocks; \
	fi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/socks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socks
	cd ${WRKBUILD}/server; ${INSTALL_PROGRAM} socks5 stopsocks \
		${PREFIX}/sbin
	cd ${WRKBUILD}/clients/pt; ${INSTALL_PROGRAM} rping rtraceroute \
		${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/finger/finger \
		${PREFIX}/bin/rfinger
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/finger/whois \
		${PREFIX}/bin/rwhois
	${INSTALL_PROGRAM} ${WRKBUILD}/clients/archie/archie \
		${PREFIX}/bin/rarchie
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
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/lib/socks
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
