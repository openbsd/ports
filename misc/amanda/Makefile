# $OpenBSD: Makefile,v 1.4 1999/02/21 04:26:15 marc Exp $
#

DISTNAME=	amanda-2.4.1p1
CATEGORIES=	misc

NEED_VERSION=	1.64

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.cs.umd.edu/pub/amanda/

GNU_CONFIGURE=	yes

CONFIGURE_ARGS=	--sysconfdir=/etc \
		--localstatedir=/var \
		--with-user=operator \
		--with-group=operator

EXAMPLE_DIR=	${PREFIX}/share/examples/amanda
pre-install:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

post-install:
	@(cd ${WRKSRC}; \
	  ${INSTALL_DATA_DIR} ${EXAMPLE_DIR}; \
	  ${INSTALL_DATA} docs/* ${EXAMPLE_DIR}; \
	  ${INSTALL_DATA} example/*.ps ${EXAMPLE_DIR}; \
	  (cd example; \
	   for f in *.conf; do \
	     sed -e 's,usr/adm,var,' \
		 -e 's,/usr/local,,' $$f > ${EXAMPLE_DIR}/$$f; \
	   done))
	@PREFIX="${PREFIX}" EXAMPLE_DIR="${EXAMPLE_DIR}" \
	 ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
