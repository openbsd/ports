# $OpenBSD: Makefile,v 1.9 2000/04/04 08:02:32 camield Exp $

DISTNAME=	dot-forward-0.71
HOMEPAGE=	http://cr.yp.to/dot-forward.html
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

FAKE=	Yes

RUN_DEPENDS=	${PREFIX}/bin/qmail-local::mail/qmail

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-qmail

# Hack to work around a bug in pkg_create: it wants PREFIX to exists
# even when the srcdir is set to the fake PREFIX.
# Don't bail out early if directory already exists or is not empty.

pre-package:
	@mkdir ${PREFIX} || true

post-package:
	@rmdir ${PREFIX} || true

.include <bsd.port.mk>
