# $OpenBSD: Makefile,v 1.13 2007/07/12 18:26:04 bernd Exp $

COMMENT-main=		"GIT - Tree History Storage Tool"
COMMENT-svn=		"GIT - subversion interoperability tools"

V=			1.5.2.3
DISTNAME=		git-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-svn=		git-svn-${V}
CATEGORIES=		devel

HOMEPAGE=		http://git.or.cz/

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			git-manpages-${V}${EXTRACT_SUFX} \
			git-htmldocs-${V}${EXTRACT_SUFX}

MASTER_SITES=		http://www.kernel.org/pub/software/scm/git/

TAR=			${LOCALBASE}/bin/gtar

MODULES=		converters/libiconv

BUILD_DEPENDS=		::archivers/gtar \
			::devel/p5-Error

MULTI_PACKAGES=		-main -svn

WANTLIB-main=		c expat crypto z
RUN_DEPENDS-main=	::x11/tk/8.4 \
			::net/rsync \
			::devel/p5-Error \
			${MODLIBICONV_RUN_DEPENDS}
LIB_DEPENDS-main=	curl.>=3::net/curl \
			${MODLIBICONV_LIB_DEPENDS}

RUN_DEPENDS-svn=	::${BASE_PKGPATH} \
			::devel/subversion,-perl \
			::www/p5-URI \
			::www/p5-libwww
LIB_DEPENDS-svn=
PKG_ARCH-svn=		*

MAKE_ENV=		prefix=${PREFIX} CC="${CC}" CFLAGS="${CFLAGS}" V=1 \
			SYSCONFDIR=${SYSCONFDIR} \
			TCLTK_PATH=${LOCALBASE}/bin/wish8.4

USE_X11=		Yes
USE_GMAKE=		Yes

REGRESS_DEPENDS=	:zip-*:archivers/zip

post-extract:
	@rm -f ${WRKDIR}/man1/git-p4import.1

post-install:
	${INSTALL_DATA} ${WRKBUILD}/libgit.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/contrib/emacs/*.el \
		${PREFIX}/share/emacs/site-lisp
	cd ${WRKDIR} && \
		pax -rw -s,man7/git.7,man1/git.1, man* ${PREFIX}/man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/git
	cd ${WRKDIR} && \
		pax -rw *.html howto/*.html *.txt howto/*.txt \
		${PREFIX}/share/doc/git

do-regress:
	cd ${WRKSRC} && ${MAKE_ENV} NO_SVN_TESTS=Yes ${MAKE_PROGRAM} \
		HOME=${WRKDIST}/t/trash TAR=${TAR} test

.include <bsd.port.mk>
