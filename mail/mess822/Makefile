# $OpenBSD: Makefile,v 1.5 2000/03/14 08:17:39 camield Exp $

DISTNAME=	mess822-0.58
HOMEPAGE=	http://cr.yp.to/mess822.html
CATEGORIES=	mail
MAINTAINER=	cd@sentia.nl

MASTER_SITES=	http://cr.yp.to/software/ \
		ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		http://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/

QMAILDIR=	/var/qmail
NO_CONFIGURE=	Yes
ALL_TARGET=	it install WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

FAKE=	Yes

RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local:mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home
	@echo ${QMAILDIR} > ${WRKSRC}/conf-qmail

.include <bsd.port.mk>
