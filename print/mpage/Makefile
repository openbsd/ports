# $OpenBSD: Makefile,v 1.17 2002/07/07 17:03:36 naddy Exp $

COMMENT=	"print multiple pages per sheet on PostScript printer"

DISTNAME=	mpage-2.5.2
CATEGORIES=	print

MAINTAINER=	Ian McWilliam <i.mcwilliam@uws.edu.au>

PERMIT_PACKAGE_CDROM=	"incomplete license"
PERMIT_PACKAGE_FTP=	"incomplete license"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mesa.nl/pub/mpage/
EXTRACT_SUFX=	.tgz

FLAVORS=	letter legal a4
FLAVOR?=	a4

ALL_TARGET=	default
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} $${DEFS}' PREFIX='${PREFIX}'

.if   ${FLAVOR:L} == "letter"
MAKE_FLAGS+=	PAGESIZE=PAGE_LETTER
.elif ${FLAVOR:L} == "legal"
MAKE_FLAGS+=	PAGESIZE=PAGE_LEGAL
.elif ${FLAVOR:L} == "a4"
MAKE_FLAGS+=	PAGESIZE=PAGE_A4
.else
ERRORS+=	"Fatal: You must set exactly ONE flavor: ${FLAVORS}"
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mpage ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/mpage.1 ${PREFIX}/man/man1
	perl -pi -e 's!%%PREFIX%%!${TRUEPREFIX}!' ${PREFIX}/man/man1/mpage.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/mpage
	${INSTALL_DATA} ${WRKSRC}/Encodings/* ${PREFIX}/share/mpage

.include <bsd.port.mk>
