# $OpenBSD: Makefile,v 1.1.1.1 2006/05/28 07:03:39 jolan Exp $

COMMENT=	"GNU versions of the rcs utilities"
DISTNAME=	rcs-5.7
PKGNAME=	g${DISTNAME}
EXTRACT_SUFX=	.tar.Z
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.cs.purdue.edu/homes/trinkle/RCS/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	c

NO_REGRESS=	Yes

CONFIGURE_STYLE=simple

do-install:
.for f in ci co ident merge rcs rcsclean rcsdiff rcsmerge rlog
	${INSTALL_PROGRAM} ${WRKSRC}/src/${f} ${PREFIX}/bin/g${f}
	${INSTALL_MAN} ${WRKSRC}/man/${f}.1 ${PREFIX}/man/man1/g${f}.1
.endfor

.include <bsd.port.mk>
