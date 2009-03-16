# $OpenBSD: Makefile,v 1.7 2009/03/16 22:17:01 kili Exp $

COMMENT=	utility to turn simply formatted text into markup 

DISTNAME=	txt2tags-2.4
PKGNAME=	${DISTNAME}p1
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

PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc/txt2tags
EXAMPLESDIR=	${PREFIX}/share/examples/txt2tags
LOCALEDIR=	${PREFIX}/share/locale

LANGUAGES=	de es fr hu it pt_BR zh_CN

pre-configure:
	@perl -pi -e "s,^#!/usr/bin/env python,#!${MODPY_BIN}," \
		${WRKSRC}/{txt2tags,extras/t2tconv,test/run.py} \
		${WRKSRC}/samples/module/module-{body,full}.py
	@perl -pi -e "s,/usr/share/locale/,${LOCALBASE}/share/locale," \
		${WRKSRC}/txt2tags

do-build:
.for l in ${LANGUAGES}
	cd ${WRKSRC}/po && msgfmt -o ${l}.mo ${l}.po
.endfor

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLESDIR}{,/img,/css,/module}
	${INSTALL_SCRIPT} ${WRKSRC}/txt2tags ${PREFIX}/bin 
	${INSTALL_SCRIPT} ${WRKSRC}/extras/t2tconv ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/extras/txt2tagsrc ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/*.* ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/img/* ${EXAMPLESDIR}/img
	${INSTALL_DATA} ${WRKSRC}/samples/css/* ${EXAMPLESDIR}/css
	${INSTALL_DATA} ${WRKSRC}/samples/module/* ${EXAMPLESDIR}/module
	${INSTALL_MAN} ${WRKSRC}/doc/manpage.man ${PREFIX}/man/man1/txt2tags.1
.for l in ${LANGUAGES}
	${INSTALL_DATA_DIR} ${LOCALEDIR}/${l}/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/${l}.mo \
		${LOCALEDIR}/${l}/LC_MESSAGES/txt2tags.mo
.endfor

do-regress:
	PATH=${WRKSRC}:$$PATH ${WRKSRC}/test/run.py

.include <bsd.port.mk>
