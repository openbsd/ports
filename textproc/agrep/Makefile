# $OpenBSD: Makefile,v 1.8 2000/10/24 01:34:02 naddy Exp $

DISTNAME=	agrep-2.04
CATEGORIES=	textproc
NEED_VERSION=	1.340
NO_CDROM=	"NOFEE:	Can not sell"

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

MASTER_SITES=	ftp://ftp.cs.arizona.edu/agrep/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

ALL_TARGET=
MAN1=		agrep.1
MAKE_FLAGS=	CFLAGS='${CFLAGS}'

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/agrep ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/agrep.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/agrep
	@${INSTALL_MAN} ${WRKSRC}/agrep.algorithms ${PREFIX}/share/doc/agrep
.endif

.include <bsd.port.mk>
