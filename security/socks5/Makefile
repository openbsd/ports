# New ports collection makefile for:	socks5
# Version required:			v1.0r3
# Date created:				21 Apr 1998
# Whom:					form@vs.itam.nsc.ru
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/27 19:53:22 marc Exp $
#

DISTNAME=	socks5-v1.0r3
PKGNAME=	socks5-1.0.3
CATEGORIES=	net security
MASTER_SITES=	ftp://ftp.ualg.pt/Linux/network/proxies/socks5/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	form@vs.itam.nsc.ru

NO_CDROM=	"NEC has a funky license for this software"
RESTRICTED=	"no commercial use"

# here are some extra configure args you may wish to use
# see the readme file before screwing with them
#
#EXTRA_CONFIGURE_ARGS= \
#		--with-default-server=socks.mydomain.com \
#		--with-syslog-facility=LOG_AUTH \
#		--with-passwd

WRKSRC=		${WRKDIR}/socks5-v1.0r3
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-srvpidfile=/var/run/socks5.pid \
		--with-srvidtfile=/var/run/socks5.ident \
		${EXTRA_CONFIGURE_ARGS}
MAN1=		runsocks.1 socks5.1 stopsocks.1 socks5_clients.1
MAN5=		libsocks5.conf.5 socks5.conf.5

SAMPLE_FILES=	README multiple_server.example \
		server_2_multiple_server.example single_homed_host.example \
		socks5.conf.dualhomed socks5.conf.gssapi \
		socks5.conf.multipleservers socks5.conf.server2server \
		socks5.conf.singlehomed

DOC_FILES=	rfc1928.txt rfc1929.txt rfc1961.txt socks.faq

post-install:
	${MKDIR} ${PREFIX}/lib/socks
.for f in ${SAMPLE_FILES}
	${INSTALL_DATA} ${WRKSRC}/examples/$f ${PREFIX}/lib/socks
.endfor
	${MKDIR} ${PREFIX}/share/doc/socks
.for f in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/doc/$f ${PREFIX}/share/doc/socks
.endfor
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
