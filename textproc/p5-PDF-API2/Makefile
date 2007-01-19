# $OpenBSD: Makefile,v 1.1.1.1 2007/01/19 03:13:20 msf Exp $

COMMENT=	"create PDF documents with perl"

MODULES=	cpan

DISTNAME=	PDF-API2-0.57
CATEGORIES=	textproc

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::archivers/p5-Compress-Zlib

.include <bsd.port.mk>
