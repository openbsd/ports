# $OpenBSD: Makefile,v 1.32 2007/01/18 20:46:21 jolan Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

COMMENT-main=	"view, distribute and print PDF documents"
COMMENT-plugins="further plugins for acrobat reader"

V=		7.0.9
DISTNAME=	AdobeReader_enu-${V}-1.i386
PKGNAME-main=	acroread-${V}
PKGNAME-plugins=acroread-plugins-${V}
CATEGORIES=	print
SHARED_LIBS=	ACE	2.07 \
		AGM	4.14 \
		BIB	1.1 \
		CoolType 5.01 \
		ResAccess 0.1 \
		aglcnv	28.0 \
		agldata	28.0 \
		agli18n	28.0 \
		agluc	28.0

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	"Adobe are control freaks"

MULTI_PACKAGES=	-main -plugins

MASTER_SITES=	http://ardownload.adobe.com/pub/adobe/reader/unix/7x/7.0.9/enu/

RUN_DEPENDS=	::emulators/fedora/base

RUN_DEPENDS-plugins=	${RUN_DEPENDS} :${PKGNAME-main}:print/acroread

WRKDIST=	${WRKDIR}/AdobeReader
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/Acrobat7
	@InstallDir=${PREFIX}/Acrobat7 ${WRKSRC}/INSTALL

post-install:
	@cd ${PREFIX}/Acrobat7/bin && \
	  patch --quiet < ${FILESDIR}/acroread.diff && \
	  rm acroread.orig && \
	  perl -pi -e "s,%%TRUEPREFIX%%,${TRUEPREFIX}," acroread && \
	  ${INSTALL_SCRIPT} ${PREFIX}/Acrobat7/bin/acroread \
	     ${PREFIX}/bin/acroread

.include <bsd.port.mk>
