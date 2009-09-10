# $OpenBSD: Makefile,v 1.4 2009/09/10 09:43:24 sturm Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
DISTNAME=	Tie-EncryptedHash-1.24
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-CBC

.include <bsd.port.mk>
