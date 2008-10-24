# $OpenBSD: Makefile,v 1.35 2008/10/24 09:17:34 bernd Exp $

COMMENT-main=		GIT - Tree History Storage Tool
COMMENT-svn=		GIT - subversion interoperability tools
COMMENT-x11=		GIT - graphical tools

V=			1.6.0.3
DISTNAME=		git-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-svn=		git-svn-${V}
PKGNAME-x11=		git-x11-${V}
CATEGORIES=		devel

HOMEPAGE=		http://git.or.cz/

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DOC_DISTFILES=		git-manpages-${V}${EXTRACT_SUFX} \
			git-htmldocs-${V}${EXTRACT_SUFX}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILES}
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES=		http://www.kernel.org/pub/software/scm/git/

TAR=			${LOCALBASE}/bin/gtar

MODULES=		converters/libiconv

BUILD_DEPENDS=		::archivers/gtar \
			::devel/p5-Error

MULTI_PACKAGES=		-main -svn -x11

WANTLIB-main=		c expat crypto z
RUN_DEPENDS-main=	::net/rsync \
			::devel/p5-Error \
			${MODLIBICONV_RUN_DEPENDS}
LIB_DEPENDS-main=	curl.>=3::net/curl \
			${MODLIBICONV_LIB_DEPENDS}

RUN_DEPENDS-svn=	::${BASE_PKGPATH} \
			::devel/p5-Term-ReadKey \
			::devel/subversion,-perl \
			::www/p5-URI \
			::www/p5-libwww
LIB_DEPENDS-svn=
PKG_ARCH-svn=		*

RUN_DEPENDS-x11=	:${PKGNAME}:${BASE_PKGPATH},-main \
			:tk-8.5.*:x11/tk/8.5
LIB_DEPENDS-x11=
PKG_ARCH-x11=		*

MAKE_ENV=		prefix=${PREFIX} CC="${CC}" CFLAGS="${CFLAGS}" V=1 \
			SYSCONFDIR=${SYSCONFDIR} \
			TCLTK_PATH=${LOCALBASE}/bin/wish8.5 \
			TCL_PATH=${LOCALBASE}/bin/tclsh8.5

USE_X11=		Yes
USE_GMAKE=		Yes

REGRESS_DEPENDS=	:zip-*:archivers/zip \
			:cvsps-*:devel/cvsps \
			::devel/subversion,-perl

post-extract:
	@mkdir -p ${WRKSRC}/doc
.for distfile in ${DOC_DISTFILES}
	@${TAR} -C ${WRKSRC}/doc -xzf ${FULLDISTDIR}/${distfile}${EXTRACT_SUFX}
.endfor
	@rm -f ${WRKSRC}/doc/man1/git-p4import.1

post-install:
	${INSTALL_DATA} ${WRKBUILD}/libgit.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKBUILD}/contrib/emacs/*.el \
		${PREFIX}/share/emacs/site-lisp
	cd ${WRKBUILD}/doc && \
		pax -rw -s,man7/git.7,man1/git.1, man* ${PREFIX}/man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/git
	cd ${WRKBUILD}/doc && \
		pax -rw *.html howto/*.html *.txt howto/*.txt \
		${PREFIX}/share/doc/git
	${INSTALL_DATA} ${WRKBUILD}/contrib/hooks/post-receive-email \
		${PREFIX}/share/git-core/templates/hooks/post-receive-email.sample
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/libexec/git

do-regress:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} \
		HOME=${WRKDIST}/t/trash TAR=${TAR} test

.include <bsd.port.mk>
