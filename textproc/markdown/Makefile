# $OpenBSD: Makefile,v 1.1.1.1 2006/10/09 16:01:25 alek Exp $

COMMENT=	"text-to-HTML conversion tool"

DISTNAME=	markdown-1-5.py
PKGNAME=	markdown-1.5
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
EXTRACT_SUFX=

WRKDIST=	${WRKDIR}/${PKGNAME}

do-extract:
	@mkdir ${WRKDIST}
	@sed -e "1s|!.*|!${MODPY_BIN}|" ${FULLDISTDIR}/${DISTNAME} \
		> ${WRKDIST}/markdown.py
	@cp ${FILESDIR}/setup.py ${WRKDIST}/.

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} markdown.py -test

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/markdown.py ${PREFIX}/bin/markdown

.include <bsd.port.mk>
