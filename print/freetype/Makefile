# $OpenBSD: Makefile,v 1.21 2001/08/30 17:12:36 shell Exp $
# $FreeBSD: Makefile,v 1.6 1998/06/21 02:42:33 jseger Exp $

COMMENT=	"free and portable TrueType font rendering engine"
COMMENT-doc=	"documents for FreeType"

VERSION=	1.3.1
DISTNAME=	freetype-${VERSION}

FULLPKGNAME=	${DISTNAME}
PKGNAME-doc=	freetype-doc-${VERSION}
FULLPKGNAME-doc=freetype-doc-${VERSION}

CATEGORIES=	print
NEED_VERSION=	1.448
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	freetype

HOMEPAGE=	http://www.freetype.org/

MAINTAINER=	Shell Hung <shell@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-nls

MULTI_PACKAGES= -doc
SUBPACKAGE?=

FT_DOC=		${PREFIX}/share/doc/freetype
SFT_DOC=	${WRKSRC}/docs
SRCTYPE=	*.txt *.htm *.lsm credits FAQ TODO

post-install:
	${INSTALL_DATA_DIR} ${FT_DOC}/image/
	${INSTALL_DATA} ${SFT_DOC}/image/* ${FT_DOC}/image/
.for i in ${SRCTYPE}
	${INSTALL_DATA} ${SFT_DOC}/$i ${FT_DOC}/
.endfor

.include <bsd.port.mk>
