# $OpenBSD: Makefile,v 1.9 2000/03/01 10:08:07 turan Exp $
#

DISTNAME=	amanda-2.4.1p1
CATEGORIES=	misc

NEED_VERSION=	1.64

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.cs.umd.edu/pub/amanda/

GNU_CONFIGURE=	yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--sysconfdir=/etc \
		--localstatedir=/var \
		--with-gnutar_list_dir=/var/db/amanda/gnutar-lists \
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
