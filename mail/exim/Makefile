# $OpenBSD: Makefile,v 1.16 2000/09/06 05:48:48 brad Exp $

DISTNAME=	exim-3.16
CATEGORIES=	mail
NEED_VERSION=	1.324
MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/ \
		ftp://ftp.exim.org/pub/exim/ \
		ftp://ftp.fu-berlin.de/unix/mail/exim/
DISTFILES=	exim-3.16.tar.gz exim-texinfo-3.10.tar.gz

HOMEPAGE=	http://www.exim.org/

MAINTAINER=	seb@gosh.todesplanet.de

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

MAKE_ENV=	FLAVOR="${FLAVOR}"
.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
.endif

do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-3.10/doc/* ; do \
		ln -sf $$i ; \
	done

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/exim

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/spec.txt ${PREFIX}/share/doc/exim/spec.txt

.include <bsd.port.mk>
