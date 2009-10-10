# $OpenBSD: Makefile,v 1.9 2009/10/10 14:30:24 kili Exp $

COMMENT=	utility to turn simply formatted text into markup 

DISTNAME=	txt2tags-2.5
CATEGORIES=	textproc	

HOMEPAGE=	http://txt2tags.sourceforge.net/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=txt2tags/}
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

BUILD_DEPENDS=	::devel/gettext

PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc/txt2tags
EXAMPLESDIR=	${PREFIX}/share/examples/txt2tags
LOCALEDIR=	${PREFIX}/share/locale

pre-configure:
	@perl -pi -e "s,^#!/usr/bin/env python,#!${MODPY_BIN}," \
		${WRKSRC}/{txt2tags,extras/gensite,test/run.py} \
		${WRKSRC}/samples/module/module-{body,full}.py
	@perl -pi -e "s,/usr/share/locale/,${LOCALBASE}/share/locale," \
		${WRKSRC}/txt2tags

do-build:
	cd ${WRKSRC}/po && for l in $$(ls *.po | sed 's@\.po$$@@'); do \
		msgfmt -o $$l.mo $$l.po; \
	done

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLESDIR}{,/img,/css,/module}
	${INSTALL_SCRIPT} ${WRKSRC}/txt2tags ${PREFIX}/bin 
	${INSTALL_SCRIPT} ${WRKSRC}/extras/gensite ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/extras/txt2tagsrc ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/*.* ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/img/* ${EXAMPLESDIR}/img
	${INSTALL_DATA} ${WRKSRC}/samples/css/* ${EXAMPLESDIR}/css
	${INSTALL_DATA} ${WRKSRC}/samples/module/* ${EXAMPLESDIR}/module
	${INSTALL_MAN} ${WRKSRC}/doc/manpage.man ${PREFIX}/man/man1/txt2tags.1
	cd ${WRKSRC}/po && for l in $$(ls *.mo | sed 's@\.mo$$@@'); do \
		d=${LOCALEDIR}/$$l/LC_MESSAGES && \
		${INSTALL_DATA_DIR} $$d && \
		${INSTALL_DATA} $$l.mo $$d/txt2tags.mo; \
	done

do-regress:
	PATH=${WRKSRC}:$$PATH ${WRKSRC}/test/run.py

.include <bsd.port.mk>
