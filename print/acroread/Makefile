# $OpenBSD: Makefile,v 1.21 2002/12/23 18:54:16 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"view, distribute and print PDF documents"

DISTNAME=	linux-506
PKGNAME=	acroread-5.06
CATEGORIES=	print

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	"Adobe are control freaks"

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/5.x/

RUN_DEPENDS=	::emulators/redhat/base

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
