# $OpenBSD: Makefile,v 1.1.1.1 2001/05/14 17:21:38 lebel Exp $

COMMENT=	"utilities for use with qmail"

DISTNAME=	qtools-0.54
HOMEPAGE=	http://www.superscript.com/qtools/intro.html

CATEGORIES=	mail
NEED_VERSION=	1.402
MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

MASTER_SITES=	http://www.superscript.com/qtools/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

QMAILDIR?=	/var/qmail
ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	${QMAILDIR}/bin/qmail-local::mail/qmail \
		ezmlm-weed::mail/ezmlm

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/bin > ${WRKSRC}/conf-ezmlm
	@echo ${PREFIX} > ${WRKSRC}/conf-home
	@echo ${QMAILDIR} > ${WRKSRC}/conf-qmail

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
