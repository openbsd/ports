# $OpenBSD: Makefile,v 1.6 2000/03/28 07:44:57 camield Exp $

DISTNAME=	rblsmtpd-0.70
HOMEPAGE=	http://cr.yp.to/rblsmtpd.html
CATEGORIES=	mail
NEED_VERSION=	1.230
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

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_CONFIGURE=	Yes
ALL_TARGET=	it install WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

FAKE=	Yes

RUN_DEPENDS=	tcpserver::net/ucspi-tcp

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
