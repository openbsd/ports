# $OpenBSD: Makefile,v 1.8 2000/03/28 07:28:33 camield Exp $

DISTNAME=	fastforward-0.51
HOMEPAGE=	http://cr.yp.to/fastforward.html
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

PREFIX=		/var/qmail
NO_CONFIGURE=	Yes
ALL_TARGET=	default WRKINST=${WRKINST}
INSTALL_TARGET=	setup check

FAKE=   Yes

RUN_DEPENDS=	${PREFIX}/bin/qmail-local::mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-qmail

pre-fake:
	@mkdir -p ${PREFIX}

# Hack to work around a bug in pkg_create: it wants PREFIX to exists
# even when the srcdir is set to the fake PREFIX

pre-package:
	@mkdir ${PREFIX}

post-package:
	@rmdir ${PREFIX}

.include <bsd.port.mk>
