# $OpenBSD: Makefile,v 1.13 2001/06/20 01:43:13 pvalchev Exp $

COMMENT=	"converter to/from base64 encoding"

DISTNAME=	base64
PKGNAME=	base64-1.0
CATEGORIES=	converters
MASTER_SITES=	http://www.fourmilab.ch/webtools/base64/

NEED_VERSION=	1.402

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/base64 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/base64.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
