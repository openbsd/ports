# $OpenBSD: Makefile,v 1.7 2000/03/24 23:28:16 espie Exp $

DISTNAME=	qmailanalog-0.70
HOMEPAGE=	http://cr.yp.to/qmailanalog.html
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

PERMIT_DISTFILES_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_PACKAGE_FTP=	no
PERMIT_PACKAGE_CDROM=	no

# only used for RUN_DEPENDS, below
QMAILDIR=	/var/qmail

NO_CONFIGURE=	Yes
ALL_TARGET=	it install WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

FAKE=	Yes

RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local::mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
