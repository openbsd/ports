# $OpenBSD: Makefile,v 1.1.1.1 2000/01/28 12:43:40 kevlo Exp $

DISTNAME=	qmail-1.03
CATEGORIES=	mail
MAINTAINER=	cd@sentia.nl
MASTER_SITES=	ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		http://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/ \
		http://pobox.com/~djb/software/ 

PREFIX=		/var/qmail
NO_CONFIGURE=	yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check
NO_MTREE=	yes

RUN_DEPENDS=    tcpserver:${PORTSDIR}/net/ucspi-tcp

SETUPFILES=	${WRKSRC}/config	${WRKSRC}/config-fast	\
		${WRKSRC}/dnsfq		${WRKSRC}/dnsip		\
		${WRKSRC}/dnsptr	${WRKSRC}/hostname	\
		${WRKSRC}/ipmeprint	${WRKSRC}/install

pre-build:
	@${ECHO} ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@${ECHO} ${PREFIX} > ${WRKSRC}/conf-qmail
	@PREFIX=${PREFIX} ${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

post-install:
	@${MKDIR} ${PREFIX}/setup
	@${CP} ${SETUPFILES} ${PREFIX}/setup
	@PREFIX=${PREFIX} ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
