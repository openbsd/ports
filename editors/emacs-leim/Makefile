# $OpenBSD: Makefile,v 1.9 2002/12/01 02:53:24 naddy Exp $

COMMENT=	"Library of Emacs Input Method"

VERSION=	20.7
PKGNAME=	emacs-leim-${VERSION}
DISTNAME=	leim-${VERSION}
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_GNU:=emacs/}

MAINTAINER=	Sungman Cho <smcho@tsp.korea.ac.kr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:emacs-20.*:editors/emacs

SUBST_VARS=	VERSION

WRKSRC=		${WRKDIR}/emacs-${VERSION}/leim
DATASUBDIR=	share/emacs/${VERSION}

NO_REGRESS=	Yes

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
