# $OpenBSD: Makefile,v 1.26 2000/08/15 17:01:22 jakob Exp $

DISTNAME=	postfix-19991231-pl08
CATEGORIES=	mail
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.merit.edu/postfix/official/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/official/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/official/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/official/

HOMEPAGE=	http://www.postfix.org/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MAKE_FLAGS=	CC="${CC}" DEBUG="" OPT="${CFLAGS}" \
		OPTS="CC=\"${CC}\" DEBUG=\"\" OPT=\"${CFLAGS}\""

ALL_TARGET=	default

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/postfix
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfix
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/libexec/* ${PREFIX}/libexec/postfix
	${INSTALL_DATA} ${WRKSRC}/conf/* ${PREFIX}/share/examples/postfix
	@(cd ${WRKSRC}/man; \
	  for mandir in man[0-9]; do \
	     ${INSTALL_MAN} $$mandir/* ${PREFIX}/man/$$mandir; \
	  done)
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/postfix
	${INSTALL_DATA} ${WRKSRC}/html/*.gif ${PREFIX}/share/doc/postfix

.include <bsd.port.mk>
