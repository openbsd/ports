# $OpenBSD: Makefile,v 1.1.1.1 2005/06/15 09:19:52 xsa Exp $

COMMENT=	"Python ID3 tag reader/writer module"

DISTNAME=	pytagger-0.4
PKGNAME=	${DISTNAME:S/^py/py-/}
CATEGORIES=	audio

HOMEPAGE=	http://www.liquidx.net/pytagger/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.liquidx.net/static/pytagger/

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
	${INSTALL_DATA} ${WRKBUILD}/mp3check.py ${EXAMPLESDIR}

.include <bsd.port.mk>
