# $OpenBSD: Makefile,v 1.5 1999/03/12 15:23:33 brad Exp $
# $FreeBSD: Makefile,v 1.7 1999/02/12 21:55:04 obrien Exp $

DISTNAME=	proftpd-1.2.0pre3
PKGNAME=	proftpd-1.2.0
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.proftpd.org/distrib/

MAINTAINER=	brad@openbsd.org

MAN1=	ftpcount.1 ftpwho.1
MAN8=	proftpd.8 ftpshut.8

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

CONFIGURE_ARGS=	--localstatedir=/var/run --sysconfdir=/etc --with-modules=mod_ratio

post-configure:
	@${MV} ${WRKSRC}/src/proftpd.8 ${WRKSRC}/src/proftpd.8.pre_sed
	@${SED}	-e 's:/usr/sbin/proftpd:${PREFIX}/libexec/proftpd:' \
		-e 's:/usr/sbin:${PREFIX}/sbin:' \
		-e 's:/usr/bin:${PREFIX}/bin:' \
		-e 's:/var/run:/var/run/proftpd:' \
		< ${WRKSRC}/src/proftpd.8.pre_sed > ${WRKSRC}/src/proftpd.8
	@${MV} ${WRKSRC}/src/ftpshut.8 ${WRKSRC}/src/ftpshut.8.pre_sed
	@${SED}	-e 's:/usr/sbin:${PREFIX}/sbin:' \
		-e 's:/etc:/var/run:' \
		-e 's:/var/run:/var/run/proftpd:' \
		< ${WRKSRC}/src/ftpshut.8.pre_sed > ${WRKSRC}/src/ftpshut.8
	@${MV} ${WRKSRC}/src/ftpcount.1 ${WRKSRC}/src/ftpcount.1.pre_sed
	@${SED}	-e 's:/usr/bin:${PREFIX}/bin:' \
		-e 's:/var/run:/var/run/proftpd:' \
		< ${WRKSRC}/src/ftpcount.1.pre_sed > ${WRKSRC}/src/ftpcount.1
	@${MV} ${WRKSRC}/src/ftpwho.1 ${WRKSRC}/src/ftpwho.1.pre_sed
	@${SED}	-e 's:/usr/bin:${PREFIX}/bin:' \
		-e 's:/var/run:/var/run/proftpd:' \
		< ${WRKSRC}/src/ftpwho.1.pre_sed > ${WRKSRC}/src/ftpwho.1

do-install:
	@${INSTALL_DATA_DIR} /var/run/proftpd
	@${INSTALL_PROGRAM} ${WRKSRC}/ftpcount ${PREFIX}/bin/ftpcount
	@${INSTALL_PROGRAM} ${WRKSRC}/proftpd ${PREFIX}/libexec/proftpd
	@${INSTALL_PROGRAM} ${WRKSRC}/ftpshut ${PREFIX}/sbin/ftpshut
	@${INSTALL_MAN} ${WRKSRC}/src/ftpcount.1 ${PREFIX}/man/man1/ftpcount.1
	@${INSTALL_MAN} ${WRKSRC}/src/ftpwho.1 ${PREFIX}/man/man1/ftpwho.1
	@${INSTALL_MAN} ${WRKSRC}/src/ftpshut.8 ${PREFIX}/man/man8/ftpshut.8
	@${INSTALL_MAN} ${WRKSRC}/src/proftpd.8 ${PREFIX}/man/man8/proftpd.8
	@if [ ! -f /etc/proftpd.conf ]; then \
		${INSTALL_SCRIPT} \
	${WRKSRC}/sample-configurations/basic.conf /etc/proftpd.conf; \
	fi

post-install:
	strip \
	${PREFIX}/bin/ftpcount \
	${PREFIX}/libexec/proftpd \
	${PREFIX}/sbin/ftpshut
	@${ECHO} "***"
	@${ECHO} "*** Finished installing proftpd."
	@${ECHO} "*** Please take a look at the sample proftpd config file /etc/proftpd.conf"
	@${ECHO} "*** and make any necessary modifications before running."
	@${ECHO} "***"

.include <bsd.port.mk>
