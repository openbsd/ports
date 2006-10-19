# $OpenBSD: Makefile,v 1.28 2006/10/19 00:20:55 sturm Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

COMMENT=	"view, distribute and print PDF documents"
COMMENT-plugins="further plugins for acrobat reader"

V=		7.0.8
DISTNAME=	AdobeReader_enu-${V}-1.i386
PKGNAME=	acroread-${V}
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

MULTI_PACKAGES=	-plugins
SUBPACKAGE?=

MASTER_SITES=	ftp://ftp.adobe.com/pub/adobe/reader/unix/7x/${V}/enu/

RUN_DEPENDS=	::emulators/fedora/base

.if defined(PACKAGING) && ${SUBPACKAGE} == "-plugins"
RUN_DEPENDS+=	:${PKGNAME}:print/acroread
.endif

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
