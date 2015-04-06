# $OpenBSD: Makefile,v 1.16 2015/04/06 22:10:56 schwarze Exp $

COMMENT=	multilanguage implementation of ctags

DISTNAME=	ctags-5.8
PKGNAME=	e${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	http://ctags.sourceforge.net/

MAINTAINER=	Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ctags/}

CONFIGURE_STYLE=gnu

DOCS=		FAQ NEWS README EXTENDING.html

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ctags ${PREFIX}/bin/ectags
	${INSTALL_MAN} ${WRKSRC}/ctags.1 ${PREFIX}/man/man1/ectags.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ectags
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ectags

NO_TEST=	Yes
SEPARATE_BUILD= Yes

.include <bsd.port.mk>
