# $OpenBSD: Makefile,v 1.6 2000/12/23 17:57:47 avsm Exp $

DISTNAME=	djbdns-1.02
HOMEPAGE=	http://cr.yp.to/djbdns.html
CATEGORIES=	net
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES=	http://cr.yp.to/djbdns/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

MASTER_SITES0=	ftp://ftp.innominate.org/gpa/djb/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-man${EXTRACT_SUFX}:0

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise::sysutils/daemontools \
		tcpclient::net/ucspi-tcp

MAN5LIST=	qualification
MAN1LIST=	dnsfilter dnsipq dnsname dnsqr dnstxt dnsip \
		dnsmx dnsq dnstrace
MAN8LIST=	axfr-get dnscache pickdns rbldns tinydns axfrdns \
		pickdns-conf rbldns-conf tinydns-conf walldns-conf \
		dnscache-conf pickdns-data rbldns-data tinydns-data \
		walldns

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

post-install:
.for mtype in 1 5 8
.  for file in ${MAN${mtype}LIST}
	${INSTALL_MAN} ${WRKDIR}/${DISTNAME}-man/${file}.${mtype} \
		${PREFIX}/man/man${mtype}
.  endfor
.endfor

.include <bsd.port.mk>
