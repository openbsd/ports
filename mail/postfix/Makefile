# $OpenBSD: Makefile,v 1.9 1999/12/05 15:01:04 jakob Exp $

DISTNAME=	postfix-19990906-pl08
CATEGORIES=     mail

MASTER_SITES=	ftp://ftp.merit.edu/postfix/official/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/official/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/official/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/official/

MAINTAINER=	dugsong@monkey.org

NO_CONFIGURE=	yes

ALL_TARGET=	default

pre-install:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

do-install:
	@echo "-> Installing postfix commands in ${PREFIX}/sbin"
	@${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/sbin
	@${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable  ${PREFIX}/sbin
	@${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	@echo "-> Installing postfix daemons in ${PREFIX}/libexec/postfix"
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/postfix
	@${INSTALL_PROGRAM} ${WRKSRC}/libexec/* ${PREFIX}/libexec/postfix
	@echo "-> Installing postfix sample config files in ${PREFIX}/lib/postfix"
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/postfix
	@${INSTALL_DATA} ${WRKSRC}/conf/* ${PREFIX}/lib/postfix
	@echo "-> Installing postfix man pages in ${PREFIX}/man"
	@( cd ${WRKSRC}/man ; \
	  for mandir in man[0-9] ; do \
	     ${INSTALL_MAN} $$mandir/* ${PREFIX}/man/$$mandir ; \
	  done )
	@echo "-> Installing postfix HTML documentation in ${PREFIX}/share/doc/postfix"
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix
	@${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/postfix
	@${INSTALL_DATA} ${WRKSRC}/html/*.gif  ${PREFIX}/share/doc/postfix

post-install:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

post-deinstall:
	@${SH} ${PKGDIR}/DEINSTALL ${DISTNAME} DEINSTALL

.include <bsd.port.mk>
