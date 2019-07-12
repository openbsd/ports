# $OpenBSD: Makefile,v 1.18 2019/07/12 20:43:49 sthen Exp $

PORTROACH=		skipv:1.3.2

COMMENT=		advanced HTML-to-text converter

DISTNAME=		html2text-1.3.2a
REVISION =		5
CATEGORIES=		converters textproc


HOMEPAGE=		http://www.mbayer.de/html2text/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES=		http://www.mbayer.de/html2text/downloads/ \
			ftp://ftp.ibiblio.org/pub/linux/apps/www/converters/

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CXX="${CXX}"

MAKE_FLAGS=	PREFIX="${PREFIX}" \
		CXXFLAGS="-DVERSION=1.3.2a -DAUTO_PTR_BROKEN ${CXXFLAGS}"

NO_TEST=	Yes

post-extract:
	gunzip ${WRKSRC}/{html2text.1,html2textrc.5}.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/html2text ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/html2text.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/html2textrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html2text
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/html2text

.include <bsd.port.mk>
