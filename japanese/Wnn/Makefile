# Imported from FreeBSD on jul 28 98
# New ports collection makefile for:	Wnn for Japanese
# Version required:	4.2
# Date created:		20 July 1997
# Whom:			Satoshi Taoka <taoka@infonets.hiroshima-u.ac.jp>
#
# $FreeBSD: Makefile,v 1.19 1997/09/23 02:17:58 max Exp $
# $OpenBSD: Makefile,v 1.15 2000/03/25 00:48:09 turan Exp $

BROKEN=		compile problems.  bombs while trying to create accounts.

DISTNAME=	Wnn4.2
PKGNAME?=	ja-Wnn-4.2
CATEGORIES?=	japanese
NEED_VERSION=	1.210
MASTER_SITES=	ftp://ftp.u-tokyo.ac.jp/pub/Japanese/Wnn/ \
		ftp://ports.jp.FreeBSD.org/pub/incoming/distfiles/
DISTFILES=	Wnn4.2.tar.gz Wnn4.2.patch.tar.gz

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

EXTRACT_ONLY=	Wnn4.2.tar.gz
PATCHDIR=	${.CURDIR}/../../japanese/Wnn/patches
FILESDIR=	${.CURDIR}/../../japanese/Wnn/files
PKGDIR=		${.CURDIR}/../../japanese/Wnn/pkg
WRKDIST=		${WRKDIR}/Xsi

NO_PACKAGE=	interactive port

.if (${PKGNAME} == ja-Wnn-4.2)
PORT_DOCDIR=	${PREFIX}/share/doc/ja-Wnn
DOC_FROM=	${WRKSRC}/Wnn
.elif (${PKGNAME} == zh-Wnn-4.2)
PORT_DOCDIR=	${PREFIX}/share/doc/zh-Wnn
DOC_FROM=	${WRKSRC}/cWnn
.endif  # kWnn has no manual.

post-extract:
	(cd ${WRKSRC} && ${EXTRACT_CMD} ${EXTRACT_BEFORE_ARGS} \
	${FULLDISTDIR}/Wnn4.2.patch.tar.gz ${EXTRACT_AFTER_ARGS})
	/bin/ln -sf Project.tmpl ${WRKSRC}/config/X11.tmpl

pre-patch:
	cd ${WRKSRC}; ${PATCH} ${PATCH_DIST_ARGS} < ${WRKSRC}/Wnn4.2.patch

# Applying a patch for depending on language
post-patch:
	case ${PKGNAME} in \
	  ja-Wnn-4.2) \
		LANG_PATCH=${FILESDIR}/patch-for-japanese;; \
	  zh-Wnn-4.2) \
		LANG_PATCH=${FILESDIR}/patch-for-chinese;; \
	  ko-Wnn-4.2) \
		LANG_PATCH=${FILESDIR}/patch-for-korean;; \
	esac; \
	(cd ${FULLDISTDIR}; \
		${PATCH} ${PATCH_DIST_ARGS} < $${LANG_PATCH})

# for PREFIX
pre-build:
	for file in ${WRKSRC}/config/Project.tmpl \
		${WRKSRC}/Contrib/dic/gerodic/Makefile; do \
	  mv $$file $$file.orig2; \
	  sed 's!^\([ ]*PREFIX = \).*$$!\1${PREFIX}!' \
		$$file.orig2 > $$file; \
	done

# These are necesary because this package uses a different Makefile for
#  building and installing etc.
do-build:
	@(cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f Makefile.inst World)

pre-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} PRE-INSTALL

post-install:
# This package uses imake's "install.man" target to install man pages but
#  I can't define USE_IMAKE because it doesn't involve xmkmf
	@(cd ${WRKSRC}; ${MAKE} ${MAKE_FLAGS} -f Makefile install.man)
	@${SETENV} PKG_PREFIX=${PREFIX} \
		${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL
.if !defined(NOPORTDOCS)
.if defined(PORT_DOCDIR)
	mkdir -p ${PORT_DOCDIR}
	@(cd ${DOC_FROM}; tar cvf - manual manual.en | \
		(cd ${PORT_DOCDIR}; tar xf -))
	@chown -R bin.bin ${PORT_DOCDIR}
.endif
.endif

.include <bsd.port.mk>
