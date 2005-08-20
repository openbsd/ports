# $OpenBSD: Makefile,v 1.27 2005/08/20 09:02:16 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"view, distribute and print PDF documents"
COMMENT-plugins="further plugins for acrobat reader"

V=		7.0.1
DISTNAME=	AdbeRdr701_linux_enu
PKGNAME=	acroread-${V}
PKGNAME-plugins=acroread-plugins-${V}
CATEGORIES=	print

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	"Adobe are control freaks"

MULTI_PACKAGES=	-plugins
SUBPACKAGE?=

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/reader/unix/7x/7.0/enu/

RUN_DEPENDS=	:redhat_base->8.0p4:emulators/redhat/base

.if defined(PACKAGING) && ${SUBPACKAGE} == "-plugins"
RUN_DEPENDS+=	:${PKGNAME}:print/acroread
.endif

WRKDIST=	${WRKDIR}/AdobeReader
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/Acrobat7
	@ReadInstallDir=${PREFIX}/Acrobat7 ${WRKSRC}/INSTALL

post-install:
	@cd ${PREFIX}/Acrobat7/bin && \
	  patch --quiet < ${FILESDIR}/acroread.diff && \
	  perl -pi -e "s,%%TRUEPREFIX%%,${TRUEPREFIX}," acroread && \
	  ${INSTALL_SCRIPT} ${PREFIX}/Acrobat7/bin/acroread \
	     ${PREFIX}/bin/acroread && rm acroread.orig

.include <bsd.port.mk>
