# $OpenBSD: Makefile,v 1.2 2006/10/14 12:04:11 alek Exp $

COMMENT=	"text-to-HTML conversion tool"

DISTNAME=	markdown-1.6a
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

WRKDIST=	${WRKDIR}/markdown-1.6

NO_REGRESS=	Yes

pre-build:
	@sed -e "1s|%MODPY_BIN%|${MODPY_BIN}|" ${FILESDIR}/markdown > \
	    ${WRKSRC}/markdown

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/markdown ${PREFIX}/bin/markdown
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/markdown
	${INSTALL_DATA} ${WRKSRC}/mdx_*py ${PREFIX}/share/examples/markdown/

.include <bsd.port.mk>
