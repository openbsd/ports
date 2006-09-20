# $OpenBSD: Makefile,v 1.3 2006/09/20 13:22:42 xsa Exp $

COMMENT=	"Python ID3 tag reader/writer module"

DISTNAME=	pytagger-0.5
PKGNAME=	${DISTNAME:S/^py/py-/}
CATEGORIES=	audio

HOMEPAGE=	http://www.liquidx.net/pytagger/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.liquidx.net/static/pytagger/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-tagger
EXAMPLESDIR=	${PREFIX}/share/examples/py-tagger

post-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKBUILD}/mp3check.py

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKBUILD}/{apic,mp3check}.py ${EXAMPLESDIR}

.include <bsd.port.mk>
