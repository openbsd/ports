# $OpenBSD: Makefile,v 1.8 2016/01/16 19:37:12 jasper Exp $

COMMENT=		convert OpenDocument Text to plain text

GH_ACCOUNT =		dstosberg
GH_PROJECT =		odt2txt
GH_TAGNAME =		v0.5

CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv

WANTLIB += c z

USE_GMAKE=	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/odt2txt ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/odt2txt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
