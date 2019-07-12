# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:02 sthen Exp $

COMMENT=		convert OpenDocument Text to plain text

GH_ACCOUNT =		dstosberg
GH_PROJECT =		odt2txt
GH_TAGNAME =		v0.5

CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=	converters/libiconv

WANTLIB += c iconv z

USE_GMAKE=	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/odt2txt ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/odt2txt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
