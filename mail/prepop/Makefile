# $OpenBSD: Makefile,v 1.3 2001/10/27 12:19:45 naddy Exp $

COMMENT=	"simple interactive POP3 client"

DISTNAME=	prepop-0.1b7
CATEGORIES=	mail
NEED_VERSION=	1.448
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
