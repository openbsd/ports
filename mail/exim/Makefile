# $OpenBSD: Makefile,v 1.14 2000/08/02 15:44:11 naddy Exp $

DISTNAME=	exim-3.14
CATEGORIES=	mail
NEED_VERSION=	1.319

HOMEPAGE=	http://www.exim.org/

MAINTAINER=	peter.galbavy@knowledge.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/ \
		ftp://ftp.exim.org/pub/exim/ \
		ftp://ftp.fu-berlin.de/unix/mail/exim/
DISTFILES=	exim-3.14.tar.gz exim-texinfo-3.10.tar.gz

FLAVORS=	no_x11
FLAVOR?=
.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
.endif
MAKE_ENV=	FLAVOR="${FLAVOR}"

do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-3.10/doc/* ; do \
		ln -sf $$i ; \
	done

pre-install:
	${INSTALL} -d ${DESTDIR}/etc/exim

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/exim
	${INSTALL_DATA} ${WRKSRC}/src/configure.default \
		${PREFIX}/share/examples/exim/configure.sample

.include <bsd.port.mk>
