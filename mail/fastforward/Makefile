# $OpenBSD: Makefile,v 1.6 2000/03/13 11:27:33 camield Exp $

DISTNAME=	fastforward-0.51
HOMEPAGE=	http://cr.yp.to/fastforward.html
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

PREFIX=		/var/qmail
NO_CONFIGURE=	Yes
ALL_TARGET=	default WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

# this will give problems if directory PREFIX does not exist
# when package is created
FAKE=   Yes

RUN_DEPENDS=	${PREFIX}/bin/qmail-local:mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-qmail

.include <bsd.port.mk>
