# $OpenBSD: Makefile,v 1.7 2000/03/28 07:22:31 camield Exp $

DISTNAME=	ezmlm-0.53
HOMEPAGE=	http://cr.yp.to/ezmlm.html
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
NO_CONFIGURE=	Yes
ALL_TARGET=	default man
INSTALL_TARGET=	setup WRKINST=${WRKINST}

FAKE=	Yes

RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local::mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/bin > ${WRKSRC}/conf-bin
	@echo ${PREFIX}/man > ${WRKSRC}/conf-man
	@echo ${QMAILDIR} > ${WRKSRC}/conf-qmail

.include <bsd.port.mk>
