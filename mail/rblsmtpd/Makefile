# OpenBSD $

DISTNAME=	rblsmtpd-0.70
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

NO_CONFIGURE=	yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check
NO_MTREE=	yes

RUN_DEPENDS=	tcpserver:${PORTSDIR}/net/ucspi-tcp

pre-build:
	@${ECHO} ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@${ECHO} ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
