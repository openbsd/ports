# $OpenBSD: Makefile,v 1.21 2000/03/09 20:50:29 jakob Exp $

#BROKEN=		auto installs files in /etc

DISTNAME=	postfix-19991231-pl05
CATEGORIES=     mail
MASTER_SITES=	ftp://ftp.merit.edu/postfix/official/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/official/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/official/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/official/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

NO_CONFIGURE=	yes

MAKE_FLAGS=	CC="${CC}" DEBUG="" OPT="${CFLAGS}" \
		OPTS="CC=\"${CC}\" DEBUG=\"\" OPT=\"${CFLAGS}\""

ALL_TARGET=	default

pre-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/postfix
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/postfix
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix
	@echo "-> Installing postfix commands in ${PREFIX}/sbin"
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-enable ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${FILESDIR}/postfix-disable ${PREFIX}/sbin
	@echo "-> Installing postfix daemons in ${PREFIX}/libexec/postfix"
	${INSTALL_PROGRAM} ${WRKSRC}/libexec/* ${PREFIX}/libexec/postfix
	@echo "-> Installing postfix sample config files in ${PREFIX}/lib/postfix"
	${INSTALL_DATA} ${WRKSRC}/conf/* ${PREFIX}/lib/postfix
	@echo "-> Installing postfix man pages in ${PREFIX}/man"
	@(cd ${WRKSRC}/man; \
	  for mandir in man[0-9]; do \
	     ${INSTALL_MAN} $$mandir/* ${PREFIX}/man/$$mandir; \
	  done)
	@echo "-> Installing postfix HTML documentation in ${PREFIX}/share/doc/postfix"
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/postfix
	${INSTALL_DATA} ${WRKSRC}/html/*.gif  ${PREFIX}/share/doc/postfix

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

post-deinstall:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/DEINSTALL ${DISTNAME} DEINSTALL

.include <bsd.port.mk>
