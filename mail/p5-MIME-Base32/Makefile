# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:45 naddy Exp $

COMMENT=		Base32 encoder/decoder

DISTNAME=		MIME-Base32-1.02a
PKGNAME=		p5-${DISTNAME:S/a$//}
CATEGORIES=		mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

.include <bsd.port.mk>
