# $OpenBSD: Makefile,v 1.14 2001/02/08 20:06:23 espie Exp $

DISTNAME=	qmail-1.03
HOMEPAGE=	http://cr.yp.to/qmail.html
CATEGORIES=	mail
NEED_VERSION=	1.230
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES=	ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		ftp://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/ \
		http://pobox.com/~djb/software/ 

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Override prefix here or on the 'make' commandline.
# Using the prefix option of pkg_add will not work, because
# the prefix is hardwired in the qmail installer.
PREFIX?=	/var/qmail
ALL_TARGET=	it man
INSTALL_TARGET=	setup check
IS_INTERACTIVE= "if qmail users/groups do not exist yet"

RUN_DEPENDS=    tcpserver::net/ucspi-tcp

SETUPBINARIES=	${WRKSRC}/dnsfq		${WRKSRC}/dnsip		\
		${WRKSRC}/dnsptr	${WRKSRC}/hostname	\
		${WRKSRC}/ipmeprint	${WRKSRC}/install
SETUPSCRIPTS=	${WRKSRC}/config	${WRKSRC}/config-fast

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-qmail
	@PREFIX=${PREFIX} ${SUDO} ${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

pre-install:
	# preserve installer with correct prefix so it can be used by the
	# the package later (we create the queue directories with it)
	mv ${WRKSRC}/install ${WRKSRC}/install.nonfake
	# rebuild install utilities with fake prefix
	echo ${PREFIX} > ${WRKSRC}/conf-qmail
	# needed when using a different prefix 
	mkdir -p ${PREFIX}

post-install:
	# restore original installer
	mv ${WRKSRC}/install.nonfake ${WRKSRC}/install
	${INSTALL_PROGRAM_DIR} ${PREFIX}/setup 
	${INSTALL_PROGRAM} ${SETUPBINARIES} ${PREFIX}/setup
	${INSTALL_SCRIPT} ${SETUPSCRIPTS} ${PREFIX}/setup

.include <bsd.port.mk>
