# $OpenBSD: Makefile,v 1.3 2000/03/05 18:30:33 espie Exp $

DISTNAME=	rblsmtpd-0.70
CATEGORIES=	mail
NEED_VERSION=	1.223
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

NO_CONFIGURE=	Yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check
NO_MTREE=	Yes

RUN_DEPENDS=	tcpserver:net/ucspi-tcp

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
