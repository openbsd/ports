# $OpenBSD: Makefile,v 1.5 2007/12/06 15:45:16 okan Exp $

COMMENT=	text-to-HTML conversion tool

DISTNAME=	markdown-1.6b
CATEGORIES=	textproc

HOMEPAGE=	http://www.freewisdom.org/projects/python-markdown/

MAINTAINER=	Will Maier <willmaier@ml1.net>

# GPL/BSD dual licensed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-markdown/}
EXTRACT_SUFX=	.zip

pre-build:
	@sed -e "1s|%MODPY_BIN%|${MODPY_BIN}|" ${FILESDIR}/markdown > \
		${WRKSRC}/markdown

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/markdown ${PREFIX}/bin/markdown

do-regress:
	@cd ${WRKDIST} && TMP_DIR=${WRKBUILD} ${MODPY_BIN} test-markdown.py

.include <bsd.port.mk>
