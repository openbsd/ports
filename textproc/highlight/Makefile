# $OpenBSD: Makefile,v 1.2 2009/05/20 11:35:27 benoit Exp $

COMMENT=		convert source code to markup formats

DISTNAME=		highlight-2.9
CATEGORIES=		textproc converters

HOMEPAGE=		http://www.andre-simon.de/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=		${HOMEPAGE}/zip/
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes

MAKE_FILE=		makefile
MAKE_FLAGS=		CXX=${CXX}

NO_REGRESS=		Yes

SHARE_DIRS=		helpmsg indentSchemes langDefs themes

post-extract:
	gunzip ${WRKSRC}/man/highlight.1.gz

do-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},' ${WRKSRC}/makefile \
		${WRKSRC}/man/highlight.1
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/man/highlight.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/highlight ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/highlight
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/highlight
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/highlight
	${INSTALL_DATA} ${WRKSRC}/filetypes.conf \
		${PREFIX}/share/examples/highlight
.for d in ${SHARE_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/highlight/$d
	${INSTALL_DATA} ${WRKSRC}/$d/* ${PREFIX}/share/highlight/$d
.endfor	
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/highlight.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
