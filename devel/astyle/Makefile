# $OpenBSD: Makefile,v 1.6 2002/07/10 20:48:12 avsm Exp $

COMMENT=		"indenter and formatter of C/C++/Java source files"

DISTNAME=		astyle_1.14.1
PKGNAME=		astyle-1.14.1
CATEGORIES=     	devel
NEED_VERSION=		1.515

HOMEPAGE=		http://astyle.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=astyle/}
EXTRACT_SUFX=		.zip
USE_GMAKE=		Yes
ALL_TARGET=		astyle

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/astyle ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/astyle
.for i in astyle astyle_release_notes license
	${INSTALL_DATA} ${WRKSRC}/$i.html ${PREFIX}/share/doc/astyle
.endfor

.include <bsd.port.mk>
