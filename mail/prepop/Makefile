# $OpenBSD: Makefile,v 1.4 2002/03/21 21:09:17 espie Exp $

COMMENT=	"simple interactive POP3 client"

DISTNAME=	prepop-0.1b7
CATEGORIES=	mail
NEED_VERSION=	1.515
HOMEPAGE=	http://www.rundegren.com/software/prepop/

MAINTAINER=	Patroklos Argyroudis <argp@bsd.gr>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS= \
	CC='${CXX}' \
	CFLAGS='${CFLAGS} -c -DVERSION="$${VERSION}" -DDATE="$${DATE}"' \
	LDFLAGS='-lreadline -ltermcap'

ALL_TARGET=	compile link

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/prepop ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prepop
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/prepop

.include <bsd.port.mk>
