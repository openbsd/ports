# $OpenBSD: Makefile,v 1.7 2001/01/09 15:25:25 camield Exp $

DISTNAME=	djbdns-1.03
HOMEPAGE=	http://cr.yp.to/djbdns.html
CATEGORIES=	net
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES=	http://cr.yp.to/djbdns/ \
		ftp://ftp.id.wustl.edu/pub/qmail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	supervise::sysutils/daemontools \
		tcpclient::net/ucspi-tcp

FLAVORS=	man
FLAVOR?=

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home


# Start of -man specific overrides
.if ${FLAVOR:L:Mman}

MASTER_SITES0=	ftp://ftp.innominate.org/gpa/djb/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-man${EXTRACT_SUFX}:0

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No

MAN5LIST=	qualification
MAN1LIST=	dnsfilter dnsipq dnsname dnsqr dnstxt dnsip \
		dnsmx dnsq dnstrace dnstracesort
MAN8LIST=	axfr-get dnscache pickdns rbldns tinydns axfrdns \
		pickdns-conf rbldns-conf tinydns-conf walldns-conf \
		dnscache-conf pickdns-data rbldns-data tinydns-data \
		walldns

post-install:
.for mtype in 1 5 8
.  for file in ${MAN${mtype}LIST}
	${INSTALL_MAN} ${WRKDIR}/${DISTNAME}-man/${file}.${mtype} \
		${PREFIX}/man/man${mtype}
.  endfor
.endfor

.endif
# End of -man specific overrides

.include <bsd.port.mk>
