# $OpenBSD: Makefile,v 1.2 2001/04/18 21:53:08 avsm Exp $

COMMENT=		"indenter and formatter of C/C++/Java source files"

DISTNAME=		astyle_1.13.8
PKGNAME=		astyle-1.13.8
CATEGORIES=     	devel
NEED_VERSION=		1.399

HOMEPAGE=		http://astyle.sourceforge.net/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	astyle
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
