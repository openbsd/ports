# $OpenBSD: Makefile,v 1.3 2002/05/13 18:50:39 espie Exp $

COMMENT=		"multilanguage implementation of ctags"

DISTNAME=		ctags-5.0.1
PKGNAME=		e${DISTNAME}
CATEGORIES=		devel
NEED_VERSION=		1.402
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ctags/}

HOMEPAGE=		http://ctags.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

DOCS=			EXTENDING.html FAQ NEWS QUOTES README COPYING 

do-install:
	${INSTALL_DATA_DIR}     ${PREFIX}/share/doc/ectags
	@cd ${WRKBUILD};        ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ectags
	${INSTALL_PROGRAM}      ${WRKBUILD}/ctags ${PREFIX}/bin/ectags
	${INSTALL_MAN}          ${WRKBUILD}/ctags.1 ${PREFIX}/man/man1/ectags.1

.include <bsd.port.mk>
