# $OpenBSD: Makefile,v 1.13 2001/06/07 12:43:01 camield Exp $

COMMENT=	"tools for building TCP client-server applications"

DISTNAME=	ucspi-tcp-0.88
HOMEPAGE=	http://cr.yp.to/ucspi-tcp.html
CATEGORIES=	net
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>
NEED_VERSION=	1.402

MASTER_SITES=	http://cr.yp.to/ucspi-tcp/ \
		ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		ftp://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# datasize limit in 'run' files is too low for ld.so
# to be able to pull in libc
LDFLAGS+=	-static

ALL_TARGET=	default
INSTALL_TARGET=	setup check

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${CC} -s ${LDFLAGS} > ${WRKSRC}/conf-ld
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
