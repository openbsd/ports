# $OpenBSD: Makefile,v 1.10 2002/05/13 18:50:39 espie Exp $

COMMENT=	"documentation system for C, C++, IDL and Java"

DISTNAME=	doc++-3.4.9
CATEGORIES=	devel
NEED_VERSION=	1.510

HOMEPAGE=	http://docpp.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docpp/}

RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	gettext

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/manual/html/* ${PREFIX}/share/doc/doc++

.include <bsd.port.mk>
