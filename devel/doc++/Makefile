# $OpenBSD: Makefile,v 1.5 2001/05/06 00:12:59 lebel Exp $

COMMENT=	"documentation system for C, C++, IDL and Java"

DISTNAME=	doc++-3.4.7
CATEGORIES=	devel
NEED_VERSION=	1.402

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/doctools

RUN_DEPENDS=	gs:ghostscript-*:print/ghostscript/gnu \
		tex:teTeX_base-*:print/teTeX/base

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--prefix=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/manual/html/* ${PREFIX}/share/doc/doc++

.include <bsd.port.mk>
