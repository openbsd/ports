# $OpenBSD: Makefile,v 1.13 2001/06/07 12:42:30 camield Exp $

COMMENT=	"collection of Domain Name System tools"

DISTNAME=	djbdns-1.05
HOMEPAGE=	http://cr.yp.to/djbdns.html
CATEGORIES=	net
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>
NEED_VERSION=	1.402

MASTER_SITES=	http://cr.yp.to/djbdns/ \
		ftp://ftp.id.wustl.edu/pub/qmail/
MASTER_SITES0=	ftp://ftp.innominate.org/gpa/djb/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-man${EXTRACT_SUFX}:0

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# datasize limit in 'run' files is too low for ld.so
# to be able to pull in libc
LDFLAGS+=	-static

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise::sysutils/daemontools \
		tcpclient::net/ucspi-tcp

MAN5LIST=	qualification
MAN1LIST=	dnsfilter dnsipq dnsname dnsqr dnstxt dnsip \
		dnsmx dnsq dnstrace dnstracesort
MAN8LIST=	axfr-get dnscache pickdns rbldns tinydns axfrdns \
		pickdns-conf rbldns-conf tinydns-conf walldns-conf \
		dnscache-conf pickdns-data rbldns-data tinydns-data \
		walldns

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${CC} -s ${LDFLAGS} > ${WRKSRC}/conf-ld
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

post-install:
.for mtype in 1 5 8
.  for file in ${MAN${mtype}LIST}
	${INSTALL_MAN} ${WRKDIR}/djbdns-man/${file}.${mtype} \
		${PREFIX}/man/man${mtype}
.  endfor
.endfor

.include <bsd.port.mk>
