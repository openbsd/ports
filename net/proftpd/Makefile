# New ports collection makefile for:	proftpd
# Version required:	1.0.3pl1
# Date created:		16 Jun 1998
# Whom:			Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/16 07:05:33 form Exp $
# FreeBSD: Makefile,v 1.3 1998/06/14 15:56:40 steve Exp
#

DISTNAME=	proftpd-1.0.3pl1
PKGNAME=	proftpd-1.0.3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.proftpd.org/distrib/

MAINTAINER=	form@vs.itam.nsc.ru

MAN1=	ftpwho.1 ftpcount.1
MAN8=	proftpd.8 ftpshut.8

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CFLAGS="${CFLAGS}"

#
# - "configure --prefix=..." doesn't seem to work :(
#   do a "sed" to set prefix to $PREFIX
#
# - do a "sed" to set the config dir to ${PREFIX}/etc
#

post-configure:
	${MV} ${WRKSRC}/Makefile ${WRKSRC}/Makefile.pre_sed
	${SED}	-e "s:^prefix=\/usr:prefix=${PREFIX}:" \
		< ${WRKSRC}/Makefile.pre_sed > ${WRKSRC}/Makefile

	@${MV} ${WRKSRC}/src/proftpd.8 ${WRKSRC}/src/proftpd.8.pre_sed
	@${SED}	-e 's:/usr/sbin/proftpd:${PREFIX}/libexec/proftpd:' \
		-e 's:/usr/sbin:${PREFIX}/sbin:' \
		-e 's:/usr/bin:${PREFIX}/bin:' \
		< ${WRKSRC}/src/proftpd.8.pre_sed > ${WRKSRC}/src/proftpd.8

	@${MV} ${WRKSRC}/src/ftpshut.8 ${WRKSRC}/src/ftpshut.8.pre_sed
	@${SED}	-e 's:/usr/sbin:${PREFIX}/sbin:' \
		-e 's:/etc:/var/run:' \
		< ${WRKSRC}/src/ftpshut.8.pre_sed > ${WRKSRC}/src/ftpshut.8

	@${MV} ${WRKSRC}/src/ftpwho.1 ${WRKSRC}/src/ftpwho.1.pre_sed
	@${SED}	-e 's:/usr/bin:${PREFIX}/bin:' \
		< ${WRKSRC}/src/ftpwho.1.pre_sed > ${WRKSRC}/src/ftpwho.1

	@${MV} ${WRKSRC}/src/ftpcount.1 ${WRKSRC}/src/ftpcount.1.pre_sed
	@${SED}	-e 's:/usr/bin:${PREFIX}/bin:' \
		< ${WRKSRC}/src/ftpcount.1.pre_sed > ${WRKSRC}/src/ftpcount.1

post-install:
	strip ${PREFIX}/bin/ftpcount \
		${PREFIX}/bin/ftpwho \
		${PREFIX}/libexec/proftpd \
		${PREFIX}/sbin/ftpshut \

.include <bsd.port.mk>
