# $OpenBSD: Makefile,v 1.1.1.1 2006/10/20 14:05:43 jasper Exp $

COMMENT=		"word-based diff program"

DISTNAME=		dwdiff-1.2
CATEGORIES=		sysutils textproc

HOMEPAGE=		http://os.ghalkes.nl/dwdiff.html

# OSL 2.0
# http://os.ghalkes.nl/licenses/osl-2.0.txt
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= c

MASTER_SITES=		http://os.ghalkes.nl/dist/
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	simple

MODULES=		devel/gettext

CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dwdiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/dwdiff.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dwdiff
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dwdiff
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/nl/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/nl.mo \
		${PREFIX}/share/locale/nl/LC_MESSAGES

.include <bsd.port.mk>
