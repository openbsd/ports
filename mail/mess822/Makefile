# $OpenBSD: Makefile,v 1.4 2000/03/05 18:30:32 espie Exp $

DISTNAME=	mess822-0.58
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

QMAILDIR=	/var/qmail
NO_CONFIGURE=	Yes
ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local:mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home
	@echo ${QMAILDIR} > ${WRKSRC}/conf-qmail

.include <bsd.port.mk>
