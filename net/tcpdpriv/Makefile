# $OpenBSD: Makefile,v 1.1.1.1 2003/04/13 10:00:41 sturm Exp $

COMMENT=	"removes sensitive information from a tcpdump -w file"

DISTNAME=	tcpdpriv-1.1.10
CATEGORIES=	net security

HOMEPAGE=	http://ita.ee.lbl.gov/html/contrib/tcpdpriv.html

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ita.ee.lbl.gov/software/
EXTRACT_SUFX=		.tar.Z

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_STYLE=	simple

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpdpriv ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpdpriv.0 ${PREFIX}/man/cat1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcpdpriv
	${INSTALL_DATA} ${WRKSRC}/attack50.ps ${PREFIX}/share/doc/tcpdpriv

.include <bsd.port.mk>
