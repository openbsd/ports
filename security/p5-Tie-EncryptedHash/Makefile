# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:27 espie Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
DISTNAME=	Tie-EncryptedHash-1.24
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
