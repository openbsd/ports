# $OpenBSD: Makefile,v 1.7 2003/06/14 21:13:40 sturm Exp $

COMMENT=	"multilanguage implementation of ctags"

DISTNAME=	ctags-5.5
PKGNAME=	e${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	http://ctags.sourceforge.net/

MAINTAINER=	Jesper Louis Andersen <jlouis@mongers.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ctags/}

CONFIGURE_STYLE=	gnu

DOCS=		FAQ NEWS README EXTENDING.html

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ectags
	@cd ${WRKBUILD}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ectags
	${INSTALL_PROGRAM} ${WRKBUILD}/ctags ${PREFIX}/bin/ectags
	${INSTALL_MAN} ${WRKBUILD}/ctags.1 ${PREFIX}/man/man1/ectags.1

NO_REGRESS=	Yes
SEPERATE_BUILD= concurrent

.include <bsd.port.mk>
