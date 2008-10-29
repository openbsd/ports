# $OpenBSD: Makefile,v 1.2 2008/10/29 09:04:53 simon Exp $

COMMENT =	source code browser plugin for the Vim text editor

DISTNAME =	taglist_45
PKGNAME =	vim-taglist-4.5p0
CATEGORIES =	devel editors
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://vim-taglist.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=vim-taglist/}

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# BSD like license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

VIMDIR =	vim72

SUBST_VARS =	VIMDIR

WRKDIST =	${WRKDIR}

RUN_DEPENDS =	::devel/ectags \
		::editors/vim

NO_BUILD =	Yes
NO_REGRESS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/${VIMDIR}/plugin/ \
		${PREFIX}/share/vim/${VIMDIR}/doc/
	${INSTALL_DATA} ${WRKSRC}/plugin/taglist.vim \
		${PREFIX}/share/vim/${VIMDIR}/plugin/
	${INSTALL_DATA} ${WRKSRC}/doc/taglist.txt \
		${PREFIX}/share/vim/${VIMDIR}/doc/

.include <bsd.port.mk>
