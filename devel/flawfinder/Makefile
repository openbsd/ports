# $OpenBSD: Makefile,v 1.12 2002/02/15 19:53:43 matt Exp $

COMMENT=		"c/c++ source code auditing tool"

DISTNAME=		flawfinder-0.21
CATEGORIES=    		devel security
NEED_VERSION=		1.504

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.dwheeler.com/flawfinder/ \
			${MASTER_SITE_PACKETSTORM}
MASTER_SITE_SUBDIR=	UNIX/misc

RUN_DEPENDS=		:python-2.1*:lang/python/2.1

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
