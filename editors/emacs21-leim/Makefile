# $OpenBSD: Makefile,v 1.2 2002/03/28 00:19:40 mark Exp $

COMMENT=	"Library of Emacs Input Method"

VERSION=	21.1
PKGNAME=	emacs-leim-${VERSION}
DISTNAME=	leim-${VERSION}
CATEGORIES=	editors
NEED_VERSION=	1.507
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= emacs

MAINTAINER=	 Yozo TODA <yozo@v007.vaio.ne.jp>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
BUILD_DEPENDS=	:emacs-${VERSION}*:editors/emacs21
RUN_DEPENDS=	:emacs-${VERSION}*:editors/emacs21

SUBST_VARS=	VERSION

WRKSRC=		${WRKDIR}/emacs-${VERSION}/leim
DATASUBDIR=	share/emacs/${VERSION}

# this is what GNU configure script does plus two lines of patch to make it
# work with the installed emacs.
do-configure:
	@cd ${WRKSRC} && cat Makefile.in | sed -e 's|@version@|${VERSION}|' \
	-e 's|@prefix@|$${DESTDIR}${PREFIX}|' \
	-e 's|@datadir@|$${prefix}/share|' \
	-e 's|@srcdir@|${WRKSRC}|' \
	-e 's|^BUILT-EMACS.*|BUILT-EMACS = ${PREFIX}/bin/emacs|' \
	-e 's|buildlisppath=.*|buildlisppath=${PREFIX}/${DATASUBDIR}/lisp|' \
	> Makefile

# leim assumes that the target directory exists already.
pre-install:
	@mkdir -p ${PREFIX}/${DATASUBDIR}/leim

.include <bsd.port.mk>
