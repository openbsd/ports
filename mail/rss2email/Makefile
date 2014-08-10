# $OpenBSD: Makefile,v 1.2 2014/08/10 09:58:06 espie Exp $

COMMENT=	get news from RSS feeds in email

DISTNAME=	rss2email-2.70

CATEGORIES=	mail textproc

HOMEPAGE=	http://www.allthingsrss.com/rss2email/

# GPLv2/v3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/py-html2text \
		textproc/py-feedparser
SUBST_VARS+=	MODPY_SITEPKG

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rss2email/ \
	    ${PREFIX}/share/doc/rss2email/ ${WRKINST}/${MODPY_SITEPKG}/
	${INSTALL_SCRIPT} ${WRKSRC}/rss2email.py ${WRKINST}/${MODPY_SITEPKG}/
	${INSTALL_DATA} ${WRKSRC}/readme.html ${PREFIX}/share/doc/rss2email/
	${INSTALL_DATA} ${WRKSRC}/config.py.example \
	    ${PREFIX}/share/examples/rss2email/
	${INSTALL_DATA} ${WRKSRC}/config.py.example \
	    ${PREFIX}/share/examples/rss2email/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${WRKINST}/${MODPY_SITEPKG}/rss2email.py
	${SUBST_PROGRAM} ${FILESDIR}/r2e ${PREFIX}/bin/r2e

.include <bsd.port.mk>
