# $OpenBSD: Makefile,v 1.13 2000/04/09 17:37:06 espie Exp $

DISTNAME=	amanda-2.4.1p1
CATEGORIES=	misc
NEED_VERSION=	1.64
FAKE=No


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cs.umd.edu/pub/amanda/

GNU_CONFIGURE=	Yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-gnutar_list_dir=/var/db/amanda/gnutar-lists \
		--with-user=operator \
		--with-group=operator

EXAMPLE_DIR=	${PREFIX}/share/examples/amanda

post-install:
	@cd ${WRKSRC}; \
	  ${INSTALL_DATA_DIR} ${EXAMPLE_DIR}; \
	  ${INSTALL_DATA} docs/* ${EXAMPLE_DIR}; \
	  ${INSTALL_DATA} example/*.ps ${EXAMPLE_DIR}; \
	  (cd example; \
	   for f in *.conf; do \
	     sed -e 's,usr/adm,var,' \
		 -e 's,/usr/local,,' $$f > ${EXAMPLE_DIR}/$$f; \
	   done)

.include <bsd.port.mk>
