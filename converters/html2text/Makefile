# $OpenBSD: Makefile,v 1.2 2007/09/18 09:00:33 steven Exp $

COMMENT=		advanced HTML-to-text converter

DISTNAME=		html2text-1.3.2a
CATEGORIES=		converters textproc


HOMEPAGE=		http://www.mbayer.de/html2text/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES= 		http://www.mbayer.de/html2text/downloads/ \
			ftp://ftp.ibiblio.org/pub/linux/apps/www/converters/

CONFIGURE_STYLE=	simple

MAKE_FLAGS=		PREFIX="${PREFIX}" CXXFLAGS+="-DVERSION=1.3.2a -DAUTO_PTR_BROKEN ${CXXFLAGS}"

NO_REGRESS=		Yes

post-extract:
	gunzip ${WRKSRC}/{html2text.1,html2textrc.5}.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/html2text ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/html2text.1 ${PREFIX}/man/man1	
	${INSTALL_MAN} ${WRKSRC}/html2textrc.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html2text
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/html2text

.include <bsd.port.mk>
