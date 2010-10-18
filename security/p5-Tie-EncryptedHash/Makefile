# $OpenBSD: Makefile,v 1.5 2010/10/18 21:41:47 espie Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
DISTNAME=	Tie-EncryptedHash-1.24
CATEGORIES=	security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-CBC

.include <bsd.port.mk>
