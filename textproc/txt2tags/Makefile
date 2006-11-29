# $OpenBSD: Makefile,v 1.3 2006/11/29 19:12:04 kili Exp $

COMMENT=	"utility to turn simply formatted text into markup" 

# Packaging nightmare: roll out tarballs for major releases but update
# only the python script for minor releases...
DISTNAME=	txt2tags-2.3.2
MAJORNAME=	${DISTNAME:C,\.[0-9]$,,}
EXTRACT_ONLY=	${MAJORNAME}.tgz
DISTFILES=	${EXTRACT_ONLY} ${DISTNAME}.py:0
WRKDIST=	${WRKDIR}/${MAJORNAME}
CATEGORIES=	textproc	

HOMEPAGE=	http://txt2tags.sourceforge.net/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=txt2tags/}
MASTER_SITES0=	${HOMEPAGE}/src/

MODULES=	lang/python

PKG_ARCH=	*

NO_BUILD=	Yes

DOCDIR=		${PREFIX}/share/doc/txt2tags
EXAMPLESDIR=	${PREFIX}/share/examples/txt2tags


post-extract:
	cp -p ${FULLDISTDIR}/${DISTNAME}.py ${WRKSRC}/${DISTNAME:C,-.*,,}

pre-configure:
	@perl -pi -e "s,^#!/usr/bin/env python,#!${MODPY_BIN}," \
		${WRKSRC}/{txt2tags,extras/t2tconv,test/run.py}

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLESDIR}{,/img,/css}
	${INSTALL_SCRIPT} ${WRKSRC}/{txt2tags,extras/t2tconv} ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/doc/{*.*,txt2tagsrc} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/*.* ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/img/*.* ${EXAMPLESDIR}/img
	${INSTALL_DATA} ${WRKSRC}/samples/css/*.* ${EXAMPLESDIR}/css
	${INSTALL_MAN} ${WRKSRC}/doc/manpage.man ${PREFIX}/man/man1/txt2tags.1

do-regress:
	@echo Note: there are 6 tests that will fail.
	chmod +x ${WRKSRC}/txt2tags
	PATH=${WRKSRC}:$$PATH ${WRKSRC}/test/run.py

.include <bsd.port.mk>
