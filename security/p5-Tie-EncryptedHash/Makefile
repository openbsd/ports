# $OpenBSD: Makefile,v 1.2 2007/01/15 17:40:10 simon Exp $

COMMENT=	"hashes with encrypting fields"

MODULES=	cpan
DISTNAME=	Tie-EncryptedHash-1.21
CATEGORIES=	security

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-CBC

.include <bsd.port.mk>
