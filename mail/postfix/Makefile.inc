# $OpenBSD: Makefile.inc,v 1.2 2000/10/05 20:58:34 jakob Exp $

CATEGORIES=	mail
NEED_VERSION=	1.310

MASTER_SITES=	ftp://ftp.merit.edu/postfix/%SUBDIR%/ \
		ftp://ftp.sunet.se/pub/unix/mail/postfix/%SUBDIR%/ \
		ftp://ftp.tau.ac.il/pub/unix/mail/postfix/%SUBDIR%/ \
		ftp://ftp.cs.uu.nl/mirror/postfix/postfix-release/%SUBDIR%/

DIST_SUBDIR=	postfix

HOMEPAGE=	http://www.postfix.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MAKE_FLAGS+=	CC="${CC}" DEBUG="" OPT="${CFLAGS}" \
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
