# $OpenBSD: Makefile,v 1.13 2000/06/04 22:42:05 espie Exp $
#

DISTNAME=	exim-3.14
CATEGORIES=	mail
#FAKE=No

MAINTAINER=	peter.galbavy@knowledge.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/
DISTFILES=	exim-3.14.tar.gz exim-texinfo-3.10.tar.gz

do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@(cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-3.10/doc/* ; do \
		ln -sf $$i ; \
	done )

pre-install:
	${INSTALL} -d ${DESTDIR}/etc/exim

post-install:
	${INSTALL_DATA_DIR}	${PREFIX}/lib/exim
	@cp ${WRKSRC}/src/configure.default ${PREFIX}/lib/exim/configure.sample


.include <bsd.port.mk>
