# $OpenBSD: Makefile,v 1.4 2000/03/03 11:44:56 turan Exp $

BROKEN=		installs files automatically in /etc

DISTNAME=	qmail-1.03
CATEGORIES=	mail
MAINTAINER=	cd@sentia.nl
MASTER_SITES=	ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		ftp://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/ \
		http://pobox.com/~djb/software/ 

PREFIX=		/var/qmail
NO_CONFIGURE=	yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check
NO_MTREE=	yes

RUN_DEPENDS=    tcpserver:${PORTSDIR}/net/ucspi-tcp

SETUPBINARIES=	${WRKSRC}/dnsfq		${WRKSRC}/dnsip		\
		${WRKSRC}/dnsptr	${WRKSRC}/hostname	\
		${WRKSRC}/ipmeprint	${WRKSRC}/install
SETUPSCRIPTS=	${WRKSRC}/config	${WRKSRC}/config-fast

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-qmail
	@PREFIX=${PREFIX} ${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

post-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/setup 
	${INSTALL_PROGRAM} ${SETUPBINARIES} ${PREFIX}/setup
	${INSTALL_SCRIPT} ${SETUPSCRIPTS} ${PREFIX}/setup
	@PREFIX=${PREFIX} ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
