# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:42 espie Exp $

COMMENT=		convert OpenDocument Text to plain text

DISTNAME=		odt2txt-0.4
REVISION =		0
CATEGORIES=		textproc

HOMEPAGE=		http://stosberg.net/odt2txt/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	converters/libiconv

WANTLIB += c z

USE_GMAKE=	Yes
USE_GROFF =	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/odt2txt ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/odt2txt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
