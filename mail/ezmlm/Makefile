# $OpenBSD: Makefile,v 1.10 2000/08/30 12:47:10 camield Exp $

DISTNAME=	ezmlm-0.53
HOMEPAGE=	http://cr.yp.to/ezmlm.html
CATEGORIES=	mail
NEED_VERSION=	1.319
MAINTAINER=	cd@sentia.nl

MASTER_SITES=	http://cr.yp.to/software/ \
		ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.ntnu.no/pub/unix/mail/qmail/ \
		ftp://ftp.mira.net.au/unix/mail/qmail/ \
		ftp://ftp.id.wustl.edu/pub/qmail/ \
		ftp://mirror.uk.uu.net/pub/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/ \
		http://ftp.rifkin.technion.ac.il/pub/qmail/ \
		http://koobera.math.uic.edu/www/software/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	idx
FLAVOR?=

QMAILDIR=	/var/qmail
ALL_TARGET=	it man
INSTALL_TARGET=	setup

# RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local::mail/qmail

# Start of -idx specific overrides
.if ${FLAVOR:L:Midx}

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No

MASTER_SITES0=	http://www.ezmlm.org/pub/patches/ \
		http://www.uk.ezmlm.org/pub/patches/ \
		http://gd.tuwien.ac.at/infosys/mail/qmail/ezmlm-patches/
IDXNAME=	ezmlm-idx-0.40
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${IDXNAME}${EXTRACT_SUFX}:0
HOMEPAGE=	http://www.ezmlm.org/
IDXRCLIST=	ch_GB cs da de en_US es fr id it jp pl pt pt_BR ru sv
MESSAGE= 	${PKGDIR}/MESSAGE.idx

post-extract:
	mv ${WRKDIR}/${IDXNAME}/* ${WRKDIR}/${DISTNAME}

post-patch:
	(cd ${WRKSRC}; patch < idx.patch)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ezmlm-idx
	${INSTALL_DATA} ${WRKSRC}/ezmlmrc ${PREFIX}/share/examples/ezmlm-idx
.for i in ${IDXRCLIST}
	${INSTALL_DATA} ${WRKSRC}/ezmlmrc.$i \
		${PREFIX}/share/examples/ezmlm-idx
.endfor

.endif
# End of -idx specific overrides

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/bin > ${WRKSRC}/conf-bin
	@echo ${PREFIX}/man > ${WRKSRC}/conf-man
	@echo ${QMAILDIR} > ${WRKSRC}/conf-qmail

pre-install:
	@echo ${PREFIX}/bin > ${WRKSRC}/conf-bin
	@echo ${PREFIX}/man > ${WRKSRC}/conf-man

.include <bsd.port.mk>
