# $OpenBSD: Makefile,v 1.11 2000/09/25 07:40:12 camield Exp $

DISTNAME=	qmailanalog-0.70
HOMEPAGE=	http://cr.yp.to/qmailanalog.html
CATEGORIES=	mail
NEED_VERSION=	1.230
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES=	http://cr.yp.to/software/ \
		ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		http://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

# only used for RUN_DEPENDS, below
QMAILDIR=	/var/qmail

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local::mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
