# $OpenBSD: Makefile,v 1.7 2016/01/16 19:35:31 jasper Exp $

COMMENT=		convert OpenDocument Text to plain text

DISTNAME=		odt2txt-0.4
REVISION =		1
CATEGORIES=		textproc

HOMEPAGE=		http://stosberg.net/odt2txt/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	converters/libiconv

WANTLIB += c z

USE_GMAKE=	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/odt2txt ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/odt2txt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
