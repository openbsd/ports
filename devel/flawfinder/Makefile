# $OpenBSD: Makefile,v 1.18 2002/10/12 07:37:31 jsyn Exp $

COMMENT=		"c/c++ source code auditing tool"

DISTNAME=		flawfinder-1.21
CATEGORIES=    		devel security

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.dwheeler.com/flawfinder/ 

PYTHON_VER=		2.2
RUN_DEPENDS=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

NO_BUILD=		Yes

MAKE_FILE=		makefile
FAKE_FLAGS=		INSTALL_DIR=${WRKINST}${PREFIX}

NO_REGRESS=		Yes

DOC_DIR=		${PREFIX}/share/doc/flawfinder
DOC_FILES=		ChangeLog README flawfinder.pdf \
			flawfinder.ps index.html test.c \
			announcement

post-patch:
	perl -pi -e \
		"s|/usr/bin/env python|${LOCALBASE}/bin/python${PYTHON_VER}|" \
		${WRKSRC}/flawfinder

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOC_DIR}
.endfor

.include <bsd.port.mk>
