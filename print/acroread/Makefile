# OpenBSD makefile for:	acroread
# Version required:	4.0
# Date created:		June 7 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.17 2002/06/19 14:11:56 lebel Exp $
#

COMMENT=	"view, distribute and print PDF documents"

DISTNAME=	linux-505
PKGNAME=	acroread-5.05
CATEGORIES=	print
NEED_VERSION=	1.531

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/5.x/
ONLY_FOR_ARCHS=	i386

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:redhat_base-*:emulators/redhat/base

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/Acrobat5
	@ReadInstallDir=${PREFIX}/Acrobat5 ${WRKSRC}/INSTALL

post-install:
	@cd ${PREFIX}/Acrobat5/bin && \
	  patch --quiet < ${FILESDIR}/acroread.diff && \
	  ${INSTALL_SCRIPT} ${PREFIX}/Acrobat5/bin/acroread \
	     ${PREFIX}/bin/acroread && rm acroread.orig

.include <bsd.port.mk>
