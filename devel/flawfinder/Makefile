# $OpenBSD: Makefile,v 1.8 2001/11/18 19:55:31 jsyn Exp $

COMMENT=		"c/c++ source code auditing tool"

DISTNAME=		flawfinder-0.19
CATEGORIES=    		devel security
NEED_VERSION=		1.498

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.dwheeler.com/flawfinder/ \
			http://www.packetstormsecurity.org/UNIX/misc/

RUN_DEPENDS=		::lang/python

NO_BUILD=		Yes

MAKE_FILE=		makefile
FAKE_FLAGS=		INSTALL_DIR=${WRKINST}${PREFIX}

NO_REGRESS=		Yes

DOC_DIR=		${PREFIX}/share/doc/flawfinder
DOC_FILES=		ChangeLog README flawfinder.pdf \
			flawfinder.ps index.html test.c \
			announcement

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOC_DIR}
.endfor

.include <bsd.port.mk>
