# $OpenBSD: Makefile,v 1.9 2000/06/21 06:00:57 camield Exp $

DISTNAME=	serialmail-0.75
HOMEPAGE=	http://cr.yp.to/serialmail.html
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

QMAILDIR=	/var/qmail
ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	tcpclient::net/ucspi-tcp
RUN_DEPENDS+=	setlock::sysutils/daemontools
RUN_DEPENDS+=	${QMAILDIR}/bin/qmail-local::mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home
	@echo ${QMAILDIR} > ${WRKSRC}/conf-qmail

pre-install:
	# Rebuild custom installer with fake prefix
	@echo ${PREFIX} > ${WRKSRC}/conf-home

post-install:
	# We prefer the setlock from daemontools, this is
	# done to resolve a package install conflict.
	@rm ${WRKSRC}/setlock

.include <bsd.port.mk>
