# $OpenBSD: Makefile,v 1.7 2001/11/13 22:13:22 espie Exp $

COMMENT=	"documentation system for C, C++, IDL and Java"

DISTNAME=	doc++-3.4.8
CATEGORIES=	devel
NEED_VERSION=	1.496

HOMEPAGE=	http://docpp.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/doctools 

RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/manual/html/* ${PREFIX}/share/doc/doc++

.include <bsd.port.mk>
