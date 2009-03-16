# $OpenBSD: Makefile,v 1.6 2009/03/16 22:20:02 kili Exp $

COMMENT=	text-to-HTML conversion tool

DISTNAME=	markdown-1.6b
PKGNAME=	${DISTNAME}p0
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
